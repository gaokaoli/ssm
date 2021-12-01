package com.kk.controller;
import com.kk.pojo.Books;
import com.kk.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    //controller层调service层

    @Autowired
    private BookService bookService;

    //查询全部的书籍  并且返回到一个书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

//    跳转到增加书籍页面
    @RequestMapping("/toAddBook")
        public String toAddPage(){
        return "addBook";
        }
//        添加书籍的请求
@RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println("addBook=>"+books);
        bookService.addBook(books);
        return "redirect:/book/allBook";// 重定向到我们的  @RequestMapping("/allBook")请求；
    }



//    跳转到修改书籍页面
    @RequestMapping("/toUpdatePage")
    public String toUpdatePage(int id,Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("QBooks",books);
        return "updateBook";
    }

//    修改书籍请求
@RequestMapping("/updateBook")
    public String updateBook(Books books){ System.out.println("updateBook=>"+books);
    bookService.updateBook(books);//真正修改到业务层进行修改
        return  "redirect:/book/allBook";
    }
    //删除书籍
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }
    //查询书籍
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){  //从前端接收名字
        Books books = bookService.queryBookByName(queryBookName);
        System.err.println("queryBook=>"+books);
        List<Books> list=new ArrayList<>();
        list.add(books); //查询出来只显示这一本

        if (books==null){
            list=bookService.queryAllBook();
            model.addAttribute("error","未查到");

        }

        model.addAttribute("list",list);
        return "allBook";

    }

}
