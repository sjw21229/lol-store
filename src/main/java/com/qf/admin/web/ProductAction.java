package com.qf.admin.web;
import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Product;
import com.qf.admin.service.ProductService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * @param
 * @Author: SJW
 * @Time: 20:39 2018/12/17
 * @version: v1.0
 */
@Controller("/lol")
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
        return jsonObject;
    }

//    @RequestMapping(value = "toUpDateProduct/{pid}",method = RequestMethod.GET)
//    public Object getProductByPid(@PathVariable("pid") int pid,Model model){
//        Object product = null;
//       product =  productService.getProductByPid(pid);
//       model.addAttribute("product",product);
//        return "upDateProduct";
//    }

    @RequestMapping(value = "upDateProduct",method = RequestMethod.POST)
    public String upDateProduct(Product product){
        productService.upDateProduct(product);
        return "showAllProduct";
    }

    @ResponseBody
    @RequestMapping(value = "/toUpDateProduct/{pid}",method = RequestMethod.GET)
        public Product getProductByPid(@PathVariable("pid") int pid){
        return productService.getProductByPid(pid);
    }

    @ResponseBody
    @RequestMapping(value = "/deleteProduct/{pid}",method = RequestMethod.GET)
    public int deleteProduct(@PathVariable("pid") int pid){
        return productService.deleteProductByPid(pid);

    }
}