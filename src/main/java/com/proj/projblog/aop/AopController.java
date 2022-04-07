package com.proj.projblog.aop;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * Date : 2022-04-03
 * Author : zilet
 * Project : ProjBlog
 * Description :
 */
@Slf4j
@Aspect
@Component
public class AopController {

    @Around("execution(* com.proj.projblog.controller.home.HomeController.*(..)) ")
    public Object homeProcessing(ProceedingJoinPoint joinPoint) {
        Object object = null;
        try {
            object = joinPoint.proceed();
        } catch (Throwable e) {
            e.printStackTrace();
            return errMsg(e.getMessage());
        }

        return object;
    }

    /**
     *  @AfterThrows 방법를 이용하는 방법도 있음.
     */
    public Object errMsg(String message){
        // HttpServletRequest 접근 방법
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        request.setAttribute("msg", message);
        return "/controller/error/500";
    }

}
