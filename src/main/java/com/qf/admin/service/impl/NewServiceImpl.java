package com.qf.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.dao.NewDao;
import com.qf.admin.pojo.po.News;
import com.qf.admin.service.NewService;
import javafx.scene.input.DataFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class NewServiceImpl implements NewService {
@Autowired
private NewDao newDao;
    @Override
    public JSONObject getNewProduct(JSONObject jsonObject) {
        JSONObject jo=new JSONObject();
        Long totalPage=newDao.countNewProduct(jsonObject);
        List<News> rows=newDao.getNewProduct(jsonObject);
        jo.put("total",totalPage);
        jo.put("rows",rows);
        return jo;

    }

    @Override
    public News getNewsById(int id) {
       return newDao.getNewsById(id);
    }

    @Override
    public void editNews(News news) {
        newDao.editNews(news);
    }

    @Override
    public int deleteById(int id) {
        return newDao.deleteById(id);
    }

    @Override
    public void saveNews(News news) {
        if(news.getPimage().isEmpty()){
            news.setPimage("d.png");
        }
        newDao.saveNews(news);
    }

    @Override
    public List<News> getAllNews() {
      return newDao.getAllNews();

    }

    @Override
    public List<News> getAllDrop() {
        return newDao.getAllDrop();
    }

    @Override
    public List<News> getAllRoost() {
        return newDao.getAllRoost();
    }
}
