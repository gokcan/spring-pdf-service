package com.gokcan.springboot;

/**
 * @author Skylifee7 on 25/07/2017.
 */

import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;

import java.util.Locale;

public class PDFViewResolver implements ViewResolver {
    @Override
    public View resolveViewName(String s, Locale locale) throws Exception {
        return new PDFView();
    }
}