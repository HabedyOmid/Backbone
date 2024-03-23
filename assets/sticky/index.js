"use strict";
var prevGSScrollpos = window.pageYOffset;
var headerGSsticky = document.querySelector(".gs-sticky-header");
var headerGSstickyUp = headerGSsticky.classList.contains("gs-sticky-header-up");
let headerGSparentblock = headerGSsticky.parentNode;
let headerGSalphaenabled = headerGSparentblock.classList.contains("gs-header-alpha");
let stickySrc = document.querySelector("[data-stickysrc]");
if(stickySrc){
    stickySrc.setAttribute("data-originalsrc", stickySrc.getAttribute("src"));
    stickySrc.srcset = '';
}

window.addEventListener("scroll", function () {
    let direction = "down";
    if(headerGSstickyUp){
        let currentScrollPos = window.pageYOffset;
        if (prevGSScrollpos > currentScrollPos) {
            direction = "up";
        } else {
            direction = "down";
        }
        prevGSScrollpos = currentScrollPos;
    }
    if (headerGSsticky) {
        headerGSparentblock.classList.toggle("gs-sticky-enable", window.scrollY > 0 && ((headerGSstickyUp && direction == "up") || !headerGSstickyUp));
        if(headerGSalphaenabled){
            if(window.scrollY > headerGSparentblock.clientHeight){
                headerGSparentblock.classList.remove("gs-header-alpha");
            }else{
                headerGSparentblock.classList.add("gs-header-alpha");
            }
        }
        document.body.style = "--greenshift-sticky-height:" + headerGSparentblock.clientHeight + "px";
    }
    if(stickySrc){
        if(window.scrollY > 0 && ((headerGSstickyUp && direction == "up") || !headerGSstickyUp)){
            if(stickySrc && stickySrc.dataset.stickysrc != stickySrc.src){
                setTimeout(function(){
                    stickySrc.src = stickySrc.dataset.stickysrc;
                }, 100);
            }
        }else{
            if(stickySrc && stickySrc.dataset.originalsrc != stickySrc.src){
                setTimeout(function(){
                    stickySrc.src = stickySrc.dataset.originalsrc;
                }, 100);
            }
        }
    }
});