package com.proj.projblog.controller.extend;

/**
 * Date : 2022-04-07
 * Author : zilet
 * Project : ProjBlog
 * Description :
 */
public interface ExtendsController {

    public String getPath(String defaultPath);

    public String getPath(Class c, String defaultPath);

}
