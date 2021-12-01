<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍信息</title>
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
                    <small style="color: coral">修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
<%--        出现的问题，我们提交了修改SQL请求，但是修改失败，初次考虑 是事务问题 配置完毕事务 依旧失败！--%>
<%--        查询一些SQL语句能否执行成功，SQL执行失败  修改未完成--%>
<%--         前端传递隐藏域--%>
            <input type="hidden" name="bookID" value="${QBooks.bookID}">
        <div class="form-group">
            <label style="color: red">名称:</label>
            <input type="text" name="bookName" class="form-control" value="${QBooks.bookName}"/>
        </div>
        <div class="form-group">
            <label style="color: red">数量:</label>
            <input type="text" name="bookCounts" class="form-control" value="${QBooks.bookCounts}"/>
        </div>

        <div class="form-group" >
            <input type="submit" class="form-control" value="修改" />
        </div>
    </form>

</div>
</body>
</html>
