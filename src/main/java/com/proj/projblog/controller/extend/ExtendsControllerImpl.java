package com.proj.projblog.controller.extend;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

/**
 * Date : 2022-04-03
 * Author : zilet
 * Project : ProjBlog
 * Description :
 */
@Slf4j
@Service
public class ExtendsControllerImpl implements ExtendsController {

    public String getPath(String defaultPath) {
        String rootPath = this.getClass().getSimpleName().split("Controller")[0].toLowerCase();
        return "/controller/" + rootPath + defaultPath;
    }

    public String getPath(Class c, String defaultPath) {
        String rootPath = c.getSimpleName().split("Controller")[0].toLowerCase();
        return "/controller/" + rootPath + defaultPath;
    }

}

