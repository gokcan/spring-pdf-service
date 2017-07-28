package com.gokcan.springboot.Config;

import com.gokcan.springboot.ViewResolver.JSONViewResolver;
import com.gokcan.springboot.ViewResolver.PDFViewResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.web.accept.ContentNegotiationManager;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.ContentNegotiatingViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Skylifee7 on 25/07/2017.
 */
@Configuration
public class WebMVCConfig extends WebMvcConfigurerAdapter {

    @Override
    public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
        configurer
                .ignoreAcceptHeader(true)
                .defaultContentType(MediaType.TEXT_HTML)
                .favorPathExtension(true);
    }

    @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    /*
     * Configure ContentNegotiatingViewResolver
     */
    @Bean
    public ViewResolver contentNegotiatingViewResolver(ContentNegotiationManager manager) {
        ContentNegotiatingViewResolver resolver = new ContentNegotiatingViewResolver();
        resolver.setContentNegotiationManager(manager);

        // Define all possible view resolvers
        List<ViewResolver> resolvers = new ArrayList<>();
        resolvers.add(pdfViewResolver());
        resolvers.add(internalResourceViewResolver());
        resolvers.add(jsonViewResolver());

        resolver.setViewResolvers(resolvers);
        return resolver;
    }

    /*
     * Configure View resolver to provide Pdf output using iText library to
     * generate pdf output for an object content
     */
    @Bean
    public ViewResolver pdfViewResolver() {
        return new PDFViewResolver();
    }

    @Bean
    public ViewResolver internalResourceViewResolver() {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/");
        bean.setSuffix(".jsp");
        return bean;
    }

    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurerAdapter() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/JAFRutr!CA-4es-u8reS/validate").allowedOrigins("http://localhost:8080");
            }
        };
    }

    @Bean
    public ViewResolver jsonViewResolver() {
        return new JSONViewResolver();
    }
}