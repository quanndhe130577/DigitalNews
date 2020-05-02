<%-- 
    Document   : SearchResultPage
    Created on : Mar 7, 2020, 08:01:43 PM
    Author     : quanndhe130577
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
        <link rel="stylesheet" href=".\css\style.css" />
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="main">                
                    <c:forEach items="${list_search}" var="x">
                        <div style="height: auto">
                            <div class="tittle">
                                <a href="HomeControl?id=${x.getId()}">      
                                    ${x.getTitle()}
                                </a>
                            </div>
                                <table style="border-spacing: 20px">
                                    <tr>
                                        <td class="image_search img"><img src="${x.getImage()}" alt=""/></td>
                                        <td class="text_search"> ${x.getShortDes()}</td>
                                    </tr>
                                </table>
                        </div>
                    </c:forEach>
                    <div class="paging">
                        <c:if test="${number_of_page lt 1}">
                            <img src=".\images\notfound.png">
                            <h3>Not Found !!</h3>
                        </c:if>
                        <c:if test="${number_of_page gt 1}">
                            <c:forEach begin="1" end="${number_of_page}" var="i">
                                <a class="${i==currentPage?"active":""}" href="SearchControl?currentPage=${i}&txtSearch=${keyWord}">${i}</a>
                            </c:forEach>
                        </c:if>
                    </div>
                </div> 
                <jsp:include page="Right.jsp"/> 
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
