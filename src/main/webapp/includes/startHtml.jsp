<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="refresh" content="180" >
    <link rel="stylesheet" href="styles/main.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <title>Blog</title>
</head>

<body>

    <div class="header">
        <div class="container">
            <div class="header-links">
                <a href="home" id="logo">JEE Blog</a>
                
                <c:choose>
                    <c:when test="${user == null}">
                        <div id="links">
                            <div class="left-links">
                                <a href="home">Home</a>
                                <a href="about.jsp">About</a>
                            </div>

                            <div class="right-links">
                                <a href="login.jsp">Login</a>
                                <a href="register.jsp">Register</a>
                            </div>
                        </div>
                    </c:when>    
                    <c:otherwise>
                        <div id="links">
                            <div class="left-links">
                                <a href="home">Home</a>
                                <a href="about.jsp">About</a>
                            </div>

                            <div class="right-links">
                                <a href="post-form.jsp">New Post</a>
                                <a href="profile">Profile</a>
                                <a href="logout">Logout</a>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
                <div id="menu">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>

            </div>
        </div>
    </div>

    <div class="container">
        <div class="side-bar">
            <div class="padding">
                <h2>Our Sidebar</h2>
                <p>You can put any information you'd like here.</p>

                <ul>
                    <li>Latest Posts</li>
                    <li>Notifications</li>
                    <li>Join chat room</li>
                    <li>Others</li>
                </ul>

            </div>
        </div>
    </div>