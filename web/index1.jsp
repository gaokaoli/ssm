<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <!--<title>$Title$</title>-->
    <!-- 引入 Bootstrap -->
     <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <style type="text/css">

      a {
        text-decoration: blink;
         color: black;
        font-size: 40px;
      }
      a:hover{
        color: green;
      }
      h3 {
        width: 300px;
        height: 60px;
        margin: 100px auto;
        text-align: center;
        border: 1px solid black;
        line-height: 60px;
        border-radius: 4px;
      }
      div{
        text-align: center;
      }

      body{
        background-image: url("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdpic.tiankong.com%2Ft1%2F8j%2FQJ7189988823.jpg&refer=http%3A%2F%2Fdpic.tiankong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639560315&t=2d9ca46a4094ef1aa381b6c04d3f94ab") ;
        background-size:contain;
        background-size:100% 100% ;
        background-attachment: fixed;
      }
      .fixed{
        width: 300px;
        height: 150px;
        position: fixed;
        top: 20%;
        left: 0;
        right: 0;
        margin:0 auto;
      }




    </style>
  </head>
  <body>

  <p>菜单</p>
  <ul class="nav nav-pills">
    <li ><a href="https://blog.csdn.net/weixin_47872288?spm=1010.2135.3001.5343">首页</a></li>
    <li><a href="https://blog.csdn.net/weixin_47872288?spm=1010.2135.3001.5343">公司网址</a></li>
    <li><a href="https://blog.csdn.net/weixin_47872288?spm=1010.2135.3001.5343">博客地址</a></li>
    <li><a href="https://blog.csdn.net/weixin_47872288?spm=1010.2135.3001.5343">商品地址</a></li>
    <li  class="active"><a href="${pageContext.request.contextPath}/book/allBook">数据库后台</a></li>
    <li><a href="https://blog.csdn.net/weixin_47872288?spm=1010.2135.3001.5343">联系方式</a></li>
  </ul>







  </div>

  </body>
</html>
