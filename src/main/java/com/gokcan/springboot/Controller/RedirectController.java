package com.gokcan.springboot.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Skylifee7 on 27/07/2017.
 */
@RestController
public class RedirectController {

    @RequestMapping("/")
    void handleRedirect(HttpServletResponse response) throws IOException {
        response.sendRedirect("/homePage");
    }
}
