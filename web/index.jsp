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
<c:set var='view' value='/index' scope='session' />


<%-- HTML markup starts below --%>

<div id="bloc_category">
<p id="titreCategory"> <fmt:message key='Category' /></p>
</div>

<div menu_category>
        <ul class="menu_horizontal_category" >
        <c:forEach var="category" items="${categories}">
            
        <li class="headerMenu">
                       
         <a href="<c:url value='category?${category.id}'/>" class="bordure_bas"> <fmt:message key='${category.name}'/> 
         </a>
                       
        </li>
        
       </c:forEach> 
        </ul>
    </div>


<div id="bloc_category">
<p id="titreCategory"> <fmt:message key='About' /></p>
</div>

 
<div id="indexLeftColumn">
    <div id="welcomeText">
        <p style="font-size: larger"><fmt:message key='greeting' /></p>

        <p><fmt:message key='introText' /></p>
    </div>
</div>

    
        
        <div id="indexRight">
            
<p id="sous_titre"> Client Feedback </p>
<hr style="width:200px; background-color:black;" />
<p class="feedback">
<fmt:message key='Comment1' />
<br> <fmt:message key='Name_Comment1' />
</p>   
<p class="feedback">
    <fmt:message key='Comment2' />
 <br> <fmt:message key='Name_Comment2' />
</p>
        </div>
        
<%--     
<div id="indexRightColumn">
    
    <c:forEach var="category" items="${categories}">
        <div class="categoryBox">
            <a href="<c:url value='category?${category.id}'/>">
                <span class="categoryLabel"></span>
                <span class="categoryLabelText"><fmt:message key='${category.name}'/></span>

                <img src="${initParam.categoryImagePath}${category.name}.jpg"
                     alt="<fmt:message key='${category.name}'/>" class="categoryImage">
            </a>
        </div>
    </c:forEach>
</div>
    
--%>