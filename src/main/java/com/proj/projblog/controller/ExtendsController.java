package com.proj.projblog.controller;

import lombok.extern.slf4j.Slf4j;

/**
 * Date : 2022-04-03
 * Author : zilet
 * Project : ProjBlog
 * Description :
 */
@Slf4j
public class ExtendsController {

    protected String getPath(String path) {
        String rootPath = this.getClass().getSimpleName().split("Controller")[0].toLowerCase();
        return "/controller/" + rootPath + path;
    }

    protected String getPath(Class c, String path) {
        String rootPath = c.getSimpleName().split("Controller")[0].toLowerCase();
        return "/controller/" + rootPath + path;
    }

}

