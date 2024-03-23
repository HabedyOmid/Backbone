"use strict";
window.addEventListener("scroll" ,function() {
    let header = document.querySelector(".gs-sticky-header");
    if(header){
        let parentblock = header.parentNode;
        parentblock.classList.toggle("gs-sticky-enable", window.scrollY > 0);
        document.body.style = "--greenshift-sticky-height:"+parentblock.clientHeight+"px";
    }
    
});