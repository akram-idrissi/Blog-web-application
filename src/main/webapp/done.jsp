<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/startHtml.jsp" /> 
    <div class="container">
        <div class="message">
            <p class="${cssClass}" style="display: ${style}">${message}</p>
        </div>
    </div>
<jsp:include page="includes/endHtml.jsp" />
