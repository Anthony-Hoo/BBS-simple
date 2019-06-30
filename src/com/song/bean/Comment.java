package com.song.bean;

import java.util.Date;

public class Comment
{
    private int id;
    private String content;
    private int userId;
    private String userName;
    private int postId;
    private Date createdAt;

    public Comment(int id, String content, Date createdAt) {
        this.id = id;
        this.content = content;
        this.createdAt = createdAt;
    }

    public Comment(String content, int userId, int postId)
    {
        this.content = content;
        this.userId = userId;
        this.postId = postId;
    }

    public Comment(String content, String userName, Date createdAt) {
        this.content = content;
        this.userName = userName;
        this.createdAt = createdAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
}
