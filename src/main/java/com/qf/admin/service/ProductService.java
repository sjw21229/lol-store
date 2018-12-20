package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Product;

import java.util.List;


/**
 * @param
 * @Author: SJW
 * @Time: 21:07 2018/12/17
 * @version: v1.0
 */
public interface ProductService {

   JSONObject listProductJson(JSONObject jsonObject);

    Product getProductByPid(int pid);

    int upDateProduct(Product product);

    int deleteProductByPid(int pid);

    int addProduct(Product product);

    List<Product> listProducts();
}
