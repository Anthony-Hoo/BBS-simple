package com.song.service;

import com.song.bean.Comment;
import com.song.bean.User;
import com.song.dao.CommentDao;
import com.song.util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class CommentService
{
    private CommentDao commentDao;

    public CommentService() {
        commentDao = new CommentDao();
    }

    public List<Comment> getComments(int id)
    {
        return commentDao.getComments(id);
    }

    public boolean store(Comment comment)
    {
        comment.setCreatedAt(new Date());
        return commentDao.store(comment);
    }

    public List<Comment> getUserComments(int id)
    {
        return commentDao.getUserComments(id);
    }

    public boolean destroy(int id)
    {
        Connection connection = ConnectionUtil.getConnection();
        PreparedStatement preparedStatement = null;
        String sql = "DELETE FROM comment WHERE id = ?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
        } catch (SQLException e) {
            System.out.println("评论删除错误！");
            e.printStackTrace();
            return false;
        } finally {
            ConnectionUtil.release(null, preparedStatement, connection);
        }
        return true;
    }
}
