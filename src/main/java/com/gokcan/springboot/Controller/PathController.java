package com.gokcan.springboot.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Skylifee7 on 22/07/2017.
 */
@Controller
public class PathController {

    @GetMapping("/welcome")
    public ModelAndView welcomePage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("welcome");
        return model;
    }

    @RequestMapping("/list-users")
    public ModelAndView usersPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("list-users");
        return model;
    }

    @GetMapping("/homePage")
    public ModelAndView homePage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("homePage");
        return model;
    }

    @GetMapping("/register")
    public ModelAndView registerPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("register");
        return model;
    }

    @RequestMapping(path = "/adminPage")
    public ModelAndView adminPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("adminPage");
        return model;
    }

    @GetMapping("/login")
    public ModelAndView loginPage(@RequestParam(value = "error", required = false) String error,
                                  @RequestParam(value = "logout", required = false) String logout) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid Credentials provided.");
        }

        if (logout != null) {
            model.addObject("message", "Logged out from the system successfully.");
        }

        model.setViewName("login");
        return model;
    }

}