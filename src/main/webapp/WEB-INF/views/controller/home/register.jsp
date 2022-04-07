<%--
  Created by IntelliJ IDEA.
  User: zilet
  Date: 2022-04-05
  Time: 오전 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://stripes.sourceforge.net/stripes.tld" prefix="stripes" %>
<%@ taglib prefix="script" uri="http://stripes.sourceforge.net/stripes-buffered-layout.tld" %>
<% String contextPath = request.getContextPath(); %>

<stripes:layout-render name="/WEB-INF/views/layout/register.jsp">

    <stripes:layout-component name="contents">

        <!-- Page content-->
        <div class="container">
            <div class="row mb-1">
                <!-- Blog Image Preview -->
                <img class="img-fluid" src="<%=contextPath%>/resources/assets/PLC_IDE1.PNG" alt="...">
            </div>

            <div class="row mb-5">
                <!-- input -->
                <div class="input-group">
                    <label class="input-group-text" for="inputGroupFile">Upload</label>
                    <input type="file" class="form-control" id="inputGroupFile">
                </div>
            </div>

            <div class="row mb-3">
                <!-- Blog Title-->
                <div class="form-floating">
                    <textarea class="form-control" placeholder="제목을 입력하세요" id="title"></textarea>
                    <label for="title">제목</label>
                </div>
            </div>

            <div class="row mb-5">
                <!-- Blog Content-->
                <div class="form-floating">
                    <textarea class="form-control" placeholder="내용을 입력하세요." id="contents" style="height: 260px"></textarea>
                    <label for="contents">내용</label>
                </div>
            </div>

            <div class="row justify-content-end mb-4">
                <div class="col-10"></div>
                <div class="col">
                    <div class="btn-group">
                        <a class="btn btn-primary">등록</a>
                        <a class="btn btn-light">취소</a>
                    </div>
                </div>
            </div>
        </div>

    </stripes:layout-component>

    <stripes:layout-component name="javascript">
        <script type="application/javascript">
            let index = '${index}';
            let title = '${title}';

            <%--let contents = '${contents}';--%>

            let contents = 'contents is .... ';

            $.fn.executeEvent = function (event) {
                title = $('#title').val();
                contents = $('#contents').val();
                location.href = '/blog?title = ' + title + '&contents=' + contents + '&index=' + index;
            };

            $('a.btn').on('click', function (event) {
                $(this).executeEvent(event);
            });

            $('#title').val(title);
            $('#contents').val(contents);
        </script>
    </stripes:layout-component>

</stripes:layout-render>
