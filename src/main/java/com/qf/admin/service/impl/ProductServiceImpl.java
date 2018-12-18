package com.qf.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.dao.ProductDao;
import com.qf.admin.pojo.po.Product;
import com.qf.admin.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @param
 * @Author: SJW
 * @Time: 11:41 2018/12/18
 * @version: v1.0
 */
@Service
public class ProductServiceImpl implements ProductService {

    private final Logger logger = LoggerFactory.getLogger(ProductServiceImpl.class);

    @Autowired
    private ProductDao productDao;


    public JSONObject listProductJson(JSONObject jsonObject) {

        JSONObject json = new JSONObject();
        try {
            List<Product> rows = productDao.listProducts(jsonObject);
            System.out.println(rows);
            long total = productDao.countProducts(jsonObject);
            json.put("total",total);
            json.put("rows",rows);
        }catch (Exception e){
            logger.info(e.getMessage());
            e.printStackTrace();
        }

        return json;
    }
}
