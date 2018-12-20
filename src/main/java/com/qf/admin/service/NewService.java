package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.News;

import java.util.List;

public interface NewService {
    JSONObject getNewProduct(JSONObject jsonObject);


    News getNewsById(int id);

    void editNews(News news);

    int deleteById(int id);

    void saveNews(News news);

    List<News> getAllNews();

    List<News> getAllDrop();

    List<News> getAllRoost();
}
