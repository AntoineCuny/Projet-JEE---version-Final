<%--
 * Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
 *
 * You may not modify, use, reproduce, or distribute this software
 * except in compliance with the terms of the license at:
 * http://developer.sun.com/berkeley_license.html

 * author: tgiunipero
--%>


<%-- Set session-scoped variable to track the view user is coming from.
     This is used by the language mechanism in the Controller so that
     users view the same page when switching between English and Czech. --%>
<c:set var="view" value="/category" scope="session" />


<%-- HTML markup starts below --%>

<div id="categoryLeftColumn">

    <c:forEach var="category" items="${categories}">

        <c:choose>
            <c:when test="${category.name == selectedCategory.name}">
                <div class="categoryButton" id="selectedCategory">
                    <span class="categoryText">
                        <fmt:message key="${category.name}"/>
                    </span>
                </div>
            </c:when>
            <c:otherwise>
                <a href="<c:url value='category?${category.id}'/>" class="categoryButton">
                    <span class="categoryText">
                        <fmt:message key="${category.name}"/>
                    </span>
                </a>
            </c:otherwise>
        </c:choose>

    </c:forEach>

</div>

<div id="categoryRightColumn">

    <p id="categoryTitle"><fmt:message key="${selectedCategory.name}" />
    <center><hr style="width:200px; background-color:black; padding-left: 200px;margin-left:2%;" /></center>
    </p>
    
    <c:forEach var="product" items="${categoryProducts}">
        <div class="productBox">
            <img src="${initParam.productImagePath}${product.name}.jpg"
                     alt="<fmt:message key='${product.name}'/>" style="width:120px; height:120px">
            <br>
            <span class="Titre_produit"><fmt:message key="${product.name}"/></span>
            <br> 
             <span class="smallText"><fmt:message key='${product.name}Description'/>
                 <br>
             <fmt:formatNumber type="currency" currencySymbol="&euro; " value="${product.price}"/></span>
                <form action="<c:url value='addToCart'/>" method="post">
                        <input type="hidden"
                               name="productId"
                               value="${product.id}">
                        <input type="submit"
                               name="submit"
                               value="<fmt:message key='addToCart'/>">
                    </form>
            
        </div>
    </c:forEach>
    
    
    <%--
    <table id="productTable">

        <c:forEach var="product" items="${categoryProducts}" varStatus="iter">

            <tr class="${((iter.index % 2) == 0) ? 'lightBlue' : 'white'}">
                <td>
                    <img src="${initParam.productImagePath}${product.name}.jpg"
                         alt="<fmt:message key='${product.name}'/>" style="width:70px; height:70px">
                </td>

                <td>
                    <fmt:message key="${product.name}"/>
                    <br>
                    <span class="smallText"><fmt:message key='${product.name}Description'/></span>
                </td>

                <td><fmt:formatNumber type="currency" currencySymbol="&euro; " value="${product.price}"/></td>

                <td>
                    <form action="<c:url value='addToCart'/>" method="post">
                        <input type="hidden"
                               name="productId"
                               value="${product.id}">
                        <input type="submit"
                               name="submit"
                               value="<fmt:message key='addToCart'/>">
                    </form>
                </td>
            </tr>

        </c:forEach>
    </table>
    --%>
   <br>
    <br>
    <br>
</div>
    
    