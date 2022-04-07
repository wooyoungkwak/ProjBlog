package com.proj.projblog.controller.home;

import com.proj.projblog.controller.ExtendsController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Date : 2022-04-03
 * Author : zilet
 * Project : ProjBlog
 * Description :
 */
@Controller
public class HomeController extends ExtendsController {

    /* GET */

    @RequestMapping("/")
    public RedirectView root_(){
        String url = "/home";
        return new RedirectView(url);
    }

    @GetMapping("/home")
    public String home(){
        return getPath("/home");
    }

    @GetMapping("/about")
    public String about(){
        return getPath("/about");
    }

    @GetMapping("/contact")
    public String contact(){
        return getPath("/contact");
    }

    @GetMapping("/blog")
    public String blog(HttpServletRequest request, Model model,
                       @RequestParam(defaultValue = "") String index, @RequestParam(defaultValue = "") String title,
                       @RequestParam(defaultValue = "") String contents,
                       @RequestParam(defaultValue = "") String page){
        model.addAttribute("index", index);
        model.addAttribute("title", title);
        model.addAttribute("contents", contents);
        if (page.length() > 0) {
            model.addAttribute("page", page);
        } else {
            model.addAttribute("page", "1");
        }
        model.addAttribute("totalPage", "1");

        return getPath("/blog");
    }

    @GetMapping("/register")
    public String register(HttpServletRequest request, Model model,
                           @RequestParam(defaultValue = "") String index, @RequestParam(defaultValue = "") String title,
                           @RequestParam(defaultValue = "") String contents){
        model.addAttribute("index", index);
        model.addAttribute("title", title);
        model.addAttribute("contents", contents);
        return getPath("/register");
    }

    /* POST */
    @PostMapping(value = "/req/info")
    @ResponseBody
    public String info(HttpServletRequest request, @RequestBody String data) {
        String result = "";

        return result;
    }

}
