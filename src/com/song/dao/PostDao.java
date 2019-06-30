package com.song.dao;

import com.song.bean.Post;
import com.song.util.ConnectionUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class PostDao
{
    public List<Post> getPosts()
    {
        Connection connection = ConnectionUtil.getConnection();
        String sql = "SELECT id, title, content FROM post ORDER BY created_at DESC ";
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Post> posts = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                posts.add(new Post(resultSet.getInt("id"),
                        resultSet.getString("title"),
                        resultSet.getString("content")));
            }
        } catch (Exception e) {
            System.out.println("获取文章失败");
            e.printStackTrace();
        } finally {
            ConnectionUtil.release(resultSet, preparedStatement, connection);
        }
        return posts;
    }

    public Post getPost(int id)
    {
        Connection connection = ConnectionUtil.getConnection();
        String sql = "SELECT post.id AS id, post.title AS title, post.content AS content, post.created_at AS created_at, user.name AS user_name FROM post LEFT JOIN user ON post.user_id = user.id WHERE post.id = ?";
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Post post = null;
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                post = new Post();
                post.setId(resultSet.getInt("id"));
                post.setTitle(resultSet.getString("title"));
                post.setContent(resultSet.getString("content"));
                post.setUserName(resultSet.getString("user_name"));
                post.setCreatedAt(resultSet.getTimestamp("created_at"));
            }
        } catch (SQLException e) {
            System.out.println("查询文章信息失败。");
            e.printStackTrace();
        } finally {
            ConnectionUtil.release(resultSet, preparedStatement, connection);
        }
        return post;
    }

    public boolean store(Post post)
    {
        Connection connection = ConnectionUtil.getConnection();
        PreparedStatement preparedStatement = null;
        String sql = "INSERT INTO post(user_id, title, content, created_at) VALUES (?, ?, ?, ?)";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, post.getId());
            preparedStatement.setString(2, post.getTitle());
            preparedStatement.setString(3, post.getContent());
            preparedStatement.setTimestamp(4, new Timestamp(post.getCreatedAt().getTime()));
            preparedStatement.execute();
        } catch (SQLException e) {
            System.out.println("文章创建失败！");
            e.printStackTrace();
            return false;
        } finally {
            ConnectionUtil.release(null, preparedStatement, connection);
        }
        return true;
    }

    public List<Post> getUserPosts(int id)
    {
        Connection connection = ConnectionUtil.getConnection();
        PreparedStatement preparedStatement = null;
        String sql = "SELECT id, title FROM post WHERE user_id = ? ORDER BY created_at DESC";
        ResultSet resultSet = null;
        List<Post> posts = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                posts.add(new Post(
                        resultSet.getInt("id"),
                        resultSet.getString("title")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionUtil.release(resultSet, preparedStatement, connection);
        }
        return posts;
    }

    public boolean update(Post post)
    {
        Connection connection = ConnectionUtil.getConnection();
        PreparedStatement preparedStatement = null;
        String sql = "UPDATE post SET title = ?, content = ? WHERE id = ?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, post.getTitle());
            preparedStatement.setString(2, post.getContent());
            preparedStatement.setInt(3, post.getId());
            preparedStatement.execute();
        } catch (SQLException e) {
            System.out.println("文章更新失败！");
            e.printStackTrace();
            return false;
        } finally {
            ConnectionUtil.release(null, preparedStatement, connection);
        }
        return true;
    }

    public boolean destroy(int id)
    {
        Connection connection = ConnectionUtil.getConnection();
        PreparedStatement preparedStatement = null;
        String sql = "DELETE FROM post WHERE id = ?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
        } catch (SQLException e) {
            System.out.println("删除文章错误！");
            e.printStackTrace();
            return false;
        } finally {
            ConnectionUtil.release(null, preparedStatement, connection);
        }
        return true;
    }
}
