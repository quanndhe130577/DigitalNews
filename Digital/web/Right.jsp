<%-- 
    Document   : Right
    Created on : Mar 3, 2020, 12:39:16 AM
    Author     : quanndhe130577
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Right Page</title>
        <link rel="stylesheet" href=".\css\right.css" />
    </head>
    <body>
        <div class="right">
            <div class="newst">
                <div class="titleNews">
                    <span>Digital News</span>
                </div>
                <div class="contentNews">
                    ${list.get(0).getShortDes()}
                </div>
            </div>
            <div class="newst">
                <div class="titleNews">
                    Search
                </div>
                <form action="SearchControl" method="post">
                    <input class="searchBox" type="text" name="txtSearch" size="15"  required>
                    <input class="searchButton" type="submit" name="btnGo" value="Go">
                </form>                        
            </div>
            <div class="newst">
                <div class="titleNews">
                    <span>Last Articles</span><br>
                </div>

                <c:forEach items="${list}" var="i" begin="1">
                    <div class="lastArticles">
                        <a href="HomeControl?id=${i.getId()}">${i.getTitle()}</a>
                    </div>
                </c:forEach>

            </div>
        </div>    
    </body>
</html>
