package com.song.service;

import com.song.bean.User;
import com.song.dao.UserDao;

import java.util.Date;

public class UserService
{
    private UserDao userDao;

    public UserService() {
        userDao = new UserDao();
    }

    public boolean register(User user)
    {
        user.setCreatedAt(new Date());
        return userDao.register(user);
    }

    public User login(String name, String password)
    {
        return userDao.login(name, password);
    }
}
