<%-- 
    Document   : HomePage
    Created on : Mar 3, 2020, 12:38:37 AM
    Author     : quanndhe130577
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href=".\css\style.css" />
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="main">
                    <div class="tittle">
                          ${one.getTitle()} 
                    </div>
                    <div class="image">
                        <img src="${one.getImage()}"/>
                    </div>
                    <div class="text">
                       ${one.description} 
                    </div>
                    <div class="signature">
                        <div class="icon1"></div>
                        <div class="icon2"></div>
                         By ${one.author} | ${one.getDateConvert()}
                    </div>
                </div>
                <jsp:include page="Right.jsp"/> 
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
