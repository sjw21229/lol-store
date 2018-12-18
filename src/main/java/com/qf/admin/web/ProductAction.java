package com.qf.admin.web;
import com.alibaba.fastjson.JSONObject;
import com.qf.admin.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @param
 * @Author: SJW
 * @Time: 20:39 2018/12/17
 * @version: v1.0
 */
@Controller
public class ProductAction {

    @Autowired
    private ProductService productService;

    @GetMapping("/{page}")
    public String page(@PathVariable String page){
        // /WEB-INF/jsp/hello.jsp
        return page;
    }

    @ResponseBody
    @RequestMapping(value = "/listProducts",method = RequestMethod.POST , produces = "application/json;charset=UTF-8")
    public Object listProducts(@RequestBody JSONObject jsonObject){
    jsonObject = productService.listProductJson(jsonObject);
    System.out.println(jsonObject);
    return jsonObject;
    }
}