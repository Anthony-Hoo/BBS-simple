package com.song.dao;

import com.song.bean.Comment;
import com.song.util.ConnectionUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CommentDao
{
    public List<Comment> getComments(int id)
    {
        Connection connection = ConnectionUtil.getConnection();
        String sql = "SELECT comment.content AS content, comment.created_at AS created_at,comment.post_id AS post_id, user.name AS user_name FROM comment LEFT JOIN  user ON comment.user_id = user.id WHERE comment.post_id = ? ORDER BY comment.created_at DESC";
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Comment> comments = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                comments.add(new Comment(resultSet.getString("content"),
                        resultSet.getString("user_name"),
                        resultSet.getTimestamp("created_at")));
            }
        } catch (SQLException e) {
            System.out.println("获取评论失败");
            e.printStackTrace();
        } finally {
            ConnectionUtil.release(resultSet, preparedStatement, connection);
        }
        return comments;
    }

    public boolean store(Comment comment)
    {
        Connection connection = ConnectionUtil.getConnection();
        PreparedStatement preparedStatement = null;
        String sql = "INSERT INTO comment(content, user_id, post_id, created_at) VALUES (?, ?, ?, ?)";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, comment.getContent());
            preparedStatement.setInt(2, comment.getUserId());
            preparedStatement.setInt(3, comment.getPostId());
            preparedStatement.setTimestamp(4, new Timestamp(comment.getCreatedAt().getTime()));
            preparedStatement.execute();
        } catch (SQLException e) {
            System.out.println("存储评论失败！");
            e.printStackTrace();
            return false;
        } finally {
            ConnectionUtil.release(null, preparedStatement, connection);
        }
        return true;
    }

    public List<Comment> getUserComments(int id)
    {
        Connection connection = ConnectionUtil.getConnection();
        PreparedStatement preparedStatement = null;
        String sql = "SELECT id, content, created_at FROM comment WHERE user_id = ? ORDER BY created_at DESC";
        ResultSet resultSet = null;
        List<Comment> comments = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                comments.add(new Comment(
                        resultSet.getInt("id"),
                        resultSet.getString("content"),
                        resultSet.getTimestamp("created_at")
                ));
            }
        } catch (SQLException e) {
            System.out.println("评论获取失败！");
            e.printStackTrace();
            return null;
        } finally {
            ConnectionUtil.release(resultSet, preparedStatement, connection);
        }
        return comments;
    }
}
