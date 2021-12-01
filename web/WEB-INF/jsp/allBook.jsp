<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询书籍展示页面</title>
    <%--BookStrap美化界面--%>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body{
            background-image: url("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdpic.tiankong.com%2Ft1%2F8j%2FQJ7189988823.jpg&refer=http%3A%2F%2Fdpic.tiankong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639560315&t=2d9ca46a4094ef1aa381b6c04d3f94ab") ;
            background-size:contain;
            background-size:100% 100% ;
            background-attachment: fixed;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small style="color:#ed864a;">清华大学 ———— 图书馆书库</small>
                    </h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 column">
<%--                    toAddbook--%>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">增加信息</a>

                </div>

                <div class="col-md-4 column">
                    <%--                    查询书籍--%>
                   <form action="${pageContext.request.contextPath}/book/queryBook" method="post" class="form-inline" >
                       <span style="color: red;font-weight: bold">${error}</span>
                       <input type="text" name="queryBookName" class="form-control" placeholder="输入查询的名称" >
                     <input type="submit" value="查询" class="btn btn-primary"  >
                   </form>
                </div>



                <div class="col-md-4 column">
                    <%--                    toAddbook--%>
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部信息</a>

            </div>

        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th style="color: deeppink">编号</th>
                            <th style="color: deeppink">名称</th>
                            <th style="color: deeppink">数量</th>
                            <th style="color: deeppink">设置</th>
                        </tr>
                    </thead>

<%--                    书籍从数据库中查询出来，从这个list中遍历出来，foreach--%>
                    <tbody>
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.bookID}</td>
                                <td>${book.bookName}</td>
                                <td>${book.bookCounts}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/book/toUpdatePage?id=${book.bookID}">修改</a>
                                    &nbsp; | &nbsp;
                                    <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <a href="/">退出界面 </a>

    </div>


</body>
</html>
