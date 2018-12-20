package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.News;
import com.qf.admin.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class Test1Action {
    @Autowired
    private NewService newService;
   @RequestMapping(value = "index",method = RequestMethod.GET)
    public String page(){
        // /WEB-INF/jsp/hello.jsp
        return "news";
    }
    @ResponseBody
    @RequestMapping(value = "/list",method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public Object list(@RequestBody JSONObject jsonObject){
    jsonObject=newService.getNewProduct(jsonObject);
    return jsonObject;
    }
    @ResponseBody
    @RequestMapping(value = "/toEdit/{id}",method = RequestMethod.GET)
    public News getNewsById(@PathVariable("id") int id){
      return newService.getNewsById(id);
    }
    @RequestMapping(value = "edit",method = RequestMethod.POST)
    public String editNews(News news){
        System.out.println(news);
       newService.editNews(news);
       return "redirect:index";
    }
    @ResponseBody
    @RequestMapping(value = "/delete/{id}",method = RequestMethod.POST)
    public int deleteById(@PathVariable int id){
       return newService.deleteById(id);
    }
    @RequestMapping(value="toAdd",method = RequestMethod.GET)
    public String toAdd(){
       return "addNews";
    }
    @RequestMapping(value="addNews",method = RequestMethod.POST)
    public String AddNews(News news, HttpServletRequest request,@RequestParam("file") MultipartFile file){
        String fileName=file.getOriginalFilename();
        String path=request.getServletContext().getRealPath("/img/");
        File filePath=new File(path,fileName);
        try {
            file.transferTo(new File(path+File.separator+fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        news.setPimage(fileName);
        newService.saveNews(news);
       return "redirect:index";
    }
    @RequestMapping(value ="showzixun",method = RequestMethod.GET)
    public String getAllNews(Model model){
     List<News> news = newService.getAllNews();
     List<News> news1=newService.getAllDrop();
     List<News> news2=newService.getAllRoost();
     model.addAttribute("news2",news2);
     model.addAttribute("news1",news1);
     model.addAttribute("news",news);
     return "zixun";
    }
    @RequestMapping(value ="back",method = RequestMethod.GET)
    public String tiaoPage(){
       return "back";
    }
    @RequestMapping(value="left",method = RequestMethod.GET)
    public String left(){
        return "left";
    }
    @RequestMapping(value="top",method = RequestMethod.GET)
    public String top(){
        return "top";
    }
}
