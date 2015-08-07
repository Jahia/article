<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<div class="clearfix">
    <c:if test="${not empty currentNode.properties['jcr:title']}">
        <h3>${currentNode.properties["jcr:title"].string}</h3>
    </c:if>
    <c:if test="${not empty currentNode.properties.insertText.string}">
        <div class='${currentNode.properties.insertType.string}-top float${currentNode.properties.insertPosition.string}'
             style='width:${currentNode.properties.insertWidth.string}px'>
            <div class="${currentNode.properties.insertType.string}-bottom">
                    ${currentNode.properties.insertText.string}
            </div>
        </div>
    </c:if>
    <c:if test="${not empty currentNode.properties.image}">
        <c:if test="${not empty currentNode.properties.align and currentNode.properties.align ne 'default'}">
        <div class="pull-${currentNode.properties.align.string}">
        </c:if>
            <c:url value="${url.files}${currentNode.properties.image.node.path}" var="imageUrl"/>
            <img itemprop="image" src="${imageUrl}" alt="${currentNode.properties.image.node.properties['jcr:title'].string}"/>
        <c:if test="${not empty currentNode.properties.align}">
        </div>
        </c:if>
    </c:if>
    ${currentNode.properties.body.string}
</div>
