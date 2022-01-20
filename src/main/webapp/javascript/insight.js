window.onload = function() {
    var xhttp = new XMLHttpRequest();
    
    posts = document.getElementsByClassName("post");
    
    for (var i = 0; i < posts.length; i++) {
    
        xhttp.onreadystatechange = function () {
            posts[i].querySelector(".likeInsight").innerHTML = this.responseText.split(",")[0];
            posts[i].querySelector(".dislikeInsight").innerHTML = this.responseText.split(",")[1];
        };

        var date = posts[i].querySelector(".hidden-date").textContent;
        
        
        xhttp.open("GET", "http://localhost:8090/blog/post-insights?date=" + date, false);
        xhttp.send();
        
    }
};


function likeInsight(icon){
    let insight = icon.parentElement;
    let postDesc = insight.parentElement;
    let post = postDesc.parentElement;
    let date = post.querySelector(".hidden-date").textContent;
    
    let likeIcon = insight.querySelector(".like");
    let dislikeIcon = insight.querySelector(".dislike");
    
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        
        if(this.readyState === 4 && this.status === 200) {
            console.log(this.responseText);
            likeIcon.querySelector(".likeInsight").innerHTML = this.responseText.split(",")[0];
            dislikeIcon.querySelector(".dislikeInsight").innerHTML = this.responseText.split(",")[1];
        }
     };    
    
    xhttp.open("GET", "http://localhost:8090/blog/post-insights?action=like&date=" + date, true);
    xhttp.send();
    
};

function dislikeInsight(icon){
    let insight = icon.parentElement;
    let postDesc = insight.parentElement;
    let post = postDesc.parentElement;
    let date = post.querySelector(".hidden-date").textContent;
    
    let likeIcon = insight.querySelector(".like");
    let dislikeIcon = insight.querySelector(".dislike");
    
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        
        if(this.readyState === 4 && this.status === 200) {
            console.log(this.responseText);
            likeIcon.querySelector(".likeInsight").innerHTML = this.responseText.split(",")[0];
            dislikeIcon.querySelector(".dislikeInsight").innerHTML = this.responseText.split(",")[1];
        }
     };    
    
    xhttp.open("GET", "http://localhost:8090/blog/post-insights?action=dislike&date=" + date, true);
    xhttp.send();
    
};