
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<form action="${pageContext.request.contextPath}/book/addBook" method="post" class="text-center">
    <div class="form-group">
       <label style="color: red">书籍名称：</label>
        <input type="text" name="bookName" required>
    </div>
    <div class="form-group">
        <label style="color: red">书籍数量：</label>
        <input type="text" name="bookCounts" required>
    </div>
    <input type="submit" value="添加">
</form>



</body>
</html>
