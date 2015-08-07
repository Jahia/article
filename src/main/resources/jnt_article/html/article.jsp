<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<template:addResources type="css" resources="article.css"/>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>

<div itemscope itemtype="http://schema.org/Article">
    <h2 itemprop="name">
        ${currentNode.properties["jcr:title"].string}
    </h2>
    <div itemprop="headline">
        ${currentNode.properties.intro.string}
    </div>
    <div itemprop="articleBody">
        <c:forEach items="${currentNode.nodes}" var="paragraph">
            <c:if test="${jcr:isNodeType(paragraph,'jnt:paragraph')}">
                <template:module node="${paragraph}" view="default"/>
            </c:if>
        </c:forEach>
        <c:if test="${renderContext.editMode}">
            <template:module path="*"/>
        </c:if>
    </div>
    <fmt:formatDate var="lastPublished" value="${currentNode.properties['j:lastPublished'].date.time}" pattern="yyyy-MM-dd'T'HH:mm:ssz"/>
    <meta itemprop="datePublished" content="${lastPublished}">
</div>
