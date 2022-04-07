<%--
  Created by IntelliJ IDEA.
  User: zilet
  Date: 2022-04-03
  Time: 오후 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://stripes.sourceforge.net/stripes.tld" prefix="stripes" %>
<%@ taglib prefix="script" uri="http://stripes.sourceforge.net/stripes-buffered-layout.tld" %>
<% String contextPath = request.getContextPath(); %>

<stripes:layout-render name="/WEB-INF/views/layout/general.jsp">
    <stripes:layout-component name="contents">

        <!-- Page content-->
        <div class="container">
            <div class="row">

                <!-- Blog entries-->
                <div class="col-lg-8">

                    <!-- Featured blog post-->
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="<%=contextPath%>/resources/assets/PLC_IDE1.PNG"
                                          alt="..."/></a>

                        <div class="card-body" index="1">
                            <div class="small text-muted">January 1, 2022</div>
                            <h2 class="card-title">Featured Post Title</h2>
                            <p class="card-text" id="">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita
                                corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                            <a class="btn btn-primary register">Registry →</a>
                        </div>
                    </div>

                    <!-- Nested row for non-featured blog posts-->
                    <div class="row">
                        <div class="col-lg-6" >
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top"
                                                  src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..."/></a>
                                <div class="card-body" index="2">
                                    <div class="small text-muted">January 1, 2022</div>
                                    <h2 class="card-title h4">Post Title</h2>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                        Reiciendis aliquid atque, nulla.</p>
                                    <a class="btn btn-primary register">Registry →</a>
                                </div>
                            </div>
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top"
                                                  src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..."/></a>
                                <div class="card-body" index="3">
                                    <div class="small text-muted">January 1, 2022</div>
                                    <h2 class="card-title h4">Post Title</h2>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                        Reiciendis aliquid atque, nulla.</p>
                                    <a class="btn btn-primary register">Registry →</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top"
                                                  src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..."/></a>
                                <div class="card-body" index="4">
                                    <div class="small text-muted">January 1, 2022</div>
                                    <h2 class="card-title h4">Post Title</h2>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                        Reiciendis aliquid atque, nulla.</p>
                                    <a class="btn btn-primary register">Registry →</a>
                                </div>
                            </div>
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top"
                                                  src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..."/></a>
                                <div class="card-body" index="5">
                                    <div class="small text-muted">January 1, 2022</div>
                                    <h2 class="card-title h4">Post Title</h2>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                        Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam.</p>
                                    <a class="btn btn-primary register">Registry →</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pagination-->
                    <nav aria-label="Pagination">
                        <hr class="my-0"/>
                        <ul class="pagination justify-content-center my-4" id="pageControl">
<%--                            <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Newer</a></li>--%>
<%--                            <li class="page-item active" aria-current="page"><a class="page-link" href="#!">1</a></li>--%>
<%--                            <li class="page-item"><a class="page-link" href="#!">2</a></li>--%>
<%--                            <li class="page-item"><a class="page-link" href="#!">3</a></li>--%>
<%--                            <li class="page-item disabled"><a class="page-link" href="#!">...</a></li>--%>
<%--                            <li class="page-item"><a class="page-link" href="#!">15</a></li>--%>
<%--                            <li class="page-item"><a class="page-link" href="#!">Older</a></li>--%>
                        </ul>
                    </nav>
                </div>

                <!-- Side widgets-->
                <div class="col-lg-4">

                    <!-- Search widget-->
                    <div class="card mb-4">
                        <div class="card-header">Search</div>
                        <div class="card-body">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Enter search term..."
                                       aria-label="Enter search term..." aria-describedby="button-search"/>
                                <button class="btn btn-primary" id="button-search" type="button">Go!</button>
                            </div>
                        </div>
                    </div>

                    <!-- Categories widget-->
                    <div class="card mb-4">
                        <div class="card-header">Categories</div>
                        <div class="card-body">
                            <div class="row" id="link">
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!">Web Design</a></li>
                                        <li><a href="#!">HTML</a></li>
                                        <li><a href="#!">Freebies</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!">JavaScript</a></li>
                                        <li><a href="#!">CSS</a></li>
                                        <li><a href="#!">Tutorials</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Side widget-->
                    <div class="card mb-4">
                        <div class="card-header">Side Widget</div>
                        <div class="card-body">You can put anything you want inside of these side widgets. They are easy
                            to use, and feature the Bootstrap 5 card component!
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </stripes:layout-component>

    <stripes:layout-component name="javascript">
        <script type="text/javascript">

            let page = '${page}';
            let totalPage = '${totalPage}';

            $.fn.executeEvent = function (event) {
                let propClass = $(this).prop('class');
                let registerPath = "register";
                if (propClass.indexOf(registerPath) != -1) {
                    let title = $(this).parent().find('.card-title').text();
                    let contents = $(this).parent().find('.card-text').text();
                    let index = $(this).parent().attr('index');
                    location.href = '/' + registerPath + '?title=' + title + '&contents=' + contents + '&index=' + index;
                }
            };

            let blogEvent = {
                init: function () {
                    this.initEvent();
                },
                initEvent: function () {
                    $('a').on('click', function (event) {
                        $(this).executeEvent(event);
                    });
                }
            };

            let searchEvent = {
                init: function (){
                    this.initEvent();
                },
                initEvent: function (){
                    $('button').on('click', function (event){
                        alert(`It's under construction.`);
                    });

                    $('#link a').on('click', function (event){
                        alert(`It's under construction.`);
                    });
                }
            }
            let pageEvent = {
                init: function () {
                    this.pathname = location.pathname.replaceAll('/','');
                    this.initPage();
                    this.initEvent();
                },
                initEvent: function () {
                    $('a.page-link').on('click', function () {
                        let currentPage = $(this).text();
                        location.href = '/' + pageEvent.pathname + '?page=' + currentPage;
                    });
                },
                initPage: function (){
                    let pageNumber = Number(page);
                    let totalPageNumber = Number(totalPage);

                    let pageHtml = ``;

                    if ( pageNumber == 1) {
                        pageHtml += `<li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Newer</a></li>`;
                    } else {
                        pageHtml += `<li class="page-item"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Newer</a></li>`;
                    }

                    for (let i = 1; i <= pageNumber; i++) {
                        if ( i === pageNumber) {
                            pageHtml += `<li class="page-item active" aria-current="page"><a class="page-link">` + i + `</a></li>`;
                        } else {
                            pageHtml += `<li class="page-item" aria-current="page"><a class="page-link">` + i + `</a></li>`;
                        }
                    }

                    if ( totalPageNumber > 3 && pageNumber < totalPageNumber) {
                        pageHtml += `<li class="page-item"><a class="page-link" href="#!">Older</a></li>`;
                    } else {
                        pageHtml += `<li class="page-item disabled"><a class="page-link" href="#!">Older</a></li>`;
                    }

                    $('#pageControl').html(pageHtml);
                }
            };

            blogEvent.init();
            searchEvent.init();
            pageEvent.init();

        </script>
    </stripes:layout-component>

</stripes:layout-render>