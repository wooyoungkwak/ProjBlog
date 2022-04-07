<%--
  Created by IntelliJ IDEA.
  User: zilet
  Date: 2022-04-03
  Time: 오후 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://stripes.sourceforge.net/stripes.tld" prefix="stripes" %>
<% String contextPath = request.getContextPath(); %>

<stripes:layout-render name="/WEB-INF/views/layout/general.jsp">

    <stripes:layout-component name="contents">

        <!-- Page content-->
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a href="post">
                            <h2 class="post-title">Man must explore, and this is exploration at its greatest</h2>
                            <h3 class="post-subtitle">Problems look mighty small from 150 miles up</h3>
                        </a>
                        <p class="post-meta">
                            Posted by
                            <a href="#none">Start Bootstrap</a>
                            on September 24, 2021
                        </p>
                    </div>
                    <!-- Divider-->
                    <hr class="my-4"/>
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a href="post"><h2 class="post-title">I believe every human has a finite number of heartbeats. I
                            don't intend to waste any of mine.</h2></a>
                        <p class="post-meta">
                            Posted by
                            <a href="#none">Start Bootstrap</a>
                            on September 18, 2021
                        </p>
                    </div>
                    <!-- Divider-->
                    <hr class="my-4"/>
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a href="post">
                            <h2 class="post-title">Science has not yet mastered prophecy</h2>
                            <h3 class="post-subtitle">We predict too much for the next year and yet far too little for
                                the next ten.</h3>
                        </a>
                        <p class="post-meta">
                            Posted by
                            <a href="#none">Start Bootstrap</a>
                            on August 24, 2021
                        </p>
                    </div>
                    <!-- Divider-->
                    <hr class="my-4"/>
                    <!-- Post preview-->
                    <div class="post-preview">
                        <a href="post">
                            <h2 class="post-title">Failure is not an option</h2>
                            <h3 class="post-subtitle">Many say exploration is part of our destiny, but it’s actually our
                                duty to future generations.</h3>
                        </a>
                        <p class="post-meta">
                            Posted by
                            <a href="#none">Start Bootstrap</a>
                            on July 8, 2021
                        </p>
                    </div>
                    <!-- Divider-->
                    <hr class="my-4"/>
                    <!-- Pager-->
                    <div class="d-flex justify-content-end mb-4"><a class="btn btn-primary text-uppercase" href="#!">Older
                        Posts →</a></div>
                </div>
            </div>
        </div>

    </stripes:layout-component>

    <stripes:layout-component name="javascript">
        <script type="text/javascript" src="<%=contextPath%>/resources/js/proj-blog-scripts.js"></script>
    </stripes:layout-component>

</stripes:layout-render>