package com.qf.admin.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Product;

import java.util.List;

/**
 * @param
 * @Author: SJW
 * @Time: 14:04 2018/12/18
 * @version: v1.0
 */
public interface ProductDao {

    List<Product> listProducts(JSONObject jsonObject);

    long countProducts(JSONObject jsonObject);

    Product getProductByPid(int pid);

    int upDateProduct(Product product);

    int deleteProduct(int pid);

    int addProduct(Product product);

    List<Product> listProduct();
}
