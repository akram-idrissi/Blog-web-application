<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="includes/startHtml.jsp" /> 
<jsp:include page="includes/homeHeader.jsp" />

<jsp:include page="includes/sideBar.jsp" />

    <div class="container">
        <ul class="posts">
            <li class="post">
                <div class="padding">
                    <div class="post-content">
                        
                        <span class="hidden-date" style="display: none">${post.getPostedDate()}</span>
                        <img src="images/${post.getUser().getImage()}" alt="profile image">
                        <div class="post-desc">
                            <span class="username">${post.getUser().getUsername()}</span>
                            <span class="post-date">${post.getPostedDate()}</span>
                            <br>
                            <a href="updatePost.jsp"><button type="submit" id="update-post-btn" name="action" value="update">Update</button></a>
                            <a href="deletePost.jsp"><button type="submit" id="delete-post-btn" name="action" value="delete">Delete</button></a>

                            <hr>
                            <a>
                                <h2>${post.getTitle()}</h2>
                            </a>
                            <p class="content">${post.getContent()}</p>

                            <button onclick="readMore(this)" class="read-more-btn">Read More</button>

                            <div class="insights">
                                <a onclick="likeInsight(this)" href="javascript:void(0);" class="like">
                                    <i class="bi bi-hand-thumbs-up"></i><span class="likeInsight"></span>
                                </a>

                                <a onclick="dislikeInsight(this)" href="javascript:void(0);" class="dislike">
                                    <i class="bi bi-hand-thumbs-down"></i><span class="dislikeInsight"></span>
                                </a>

                                <a href="comments.jsp" class="comment">
                                    <i class="bi bi-chat"></i><span class="commentInsight"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
                
    <script src="javascript/readMore.js"></script>
    <script src="javascript/insight.js"></script>
                                            
<jsp:include page="includes/endHtml.jsp" />