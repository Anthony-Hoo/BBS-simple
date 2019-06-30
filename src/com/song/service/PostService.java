package com.song.service;

import com.song.bean.Post;
import com.song.dao.PostDao;
import com.song.util.HtmlToText;

import java.util.Date;
import java.util.List;

/*
* 业务逻辑。
* 在这个层里面对数据进行逻辑处理 。
* 例如:我要对前台拿到的数据进行数据库插入 。
* 那么我要对数据进行一定的组装 ，判断，设置等等之后再插入数据库中去。
* service就是做上面的事情。这只是个例子 具体还是要看你所需的业务逻辑
* */
public class PostService
{
    private PostDao postDao;

    public PostService() {
        postDao = new PostDao();
    }

    public List<Post> getPosts()
    {
        List<Post> posts =  postDao.getPosts();
        HtmlToText htmlToText = new HtmlToText();
        for (Post post : posts) {
            post.setContent(htmlToText.getText(post.getContent()));
        }
        return posts;
    }

    public Post getPost(int id)
    {
        return postDao.getPost(id);
    }

    public boolean store(Post post)
    {
        post.setCreatedAt(new Date());
        return postDao.store(post);
    }

    public List<Post> getUserPosts(int id)
    {
        return postDao.getUserPosts(id);
    }

    public boolean update(Post post)
    {
        return postDao.update(post);
    }

    public boolean destroy(int id)
    {
        return postDao.destroy(id);
    }
}
