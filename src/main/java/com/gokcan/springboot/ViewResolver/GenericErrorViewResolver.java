package com.gokcan.springboot.ViewResolver;

import org.springframework.boot.autoconfigure.web.ErrorViewResolver;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @author Skylifee7 on 25/07/2017.
 */
@ControllerAdvice
public class GenericErrorViewResolver implements ErrorViewResolver {

    @Override
    public ModelAndView resolveErrorView(HttpServletRequest request,
                                         HttpStatus httpStatus, Map<String, Object> model) {
        // Use the request or status to optionally return a ModelAndView
        ModelAndView modelAndView = new ModelAndView();
        int status = httpStatus.value();

        if (httpStatus.is4xxClientError()) {

            System.out.println(status);

            if (status == 403) {
                modelAndView.setViewName("Error403");
            } else if (status == 404) {
                modelAndView.setViewName("Error404");
            }
        }

        return modelAndView;
    }

}