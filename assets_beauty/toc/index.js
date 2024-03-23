
"use strict";
const onFRTOCDiv = () => {

    const TOCdiv = document.createElement("div");
    TOCdiv.classList.add('gs-toc');
    TOCdiv.innerHTML = '<div class="gs-toc-mobile"><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="29.957px" height="122.88px" viewBox="0 0 29.957 122.88"><g><path d="M14.978,0c8.27,0,14.979,6.708,14.979,14.979c0,8.27-6.709,14.976-14.979,14.976 C6.708,29.954,0,23.249,0,14.979C0,6.708,6.708,0,14.978,0L14.978,0z M14.978,92.926c8.27,0,14.979,6.708,14.979,14.979 s-6.709,14.976-14.979,14.976C6.708,122.88,0,116.175,0,107.904S6.708,92.926,14.978,92.926L14.978,92.926z M14.978,46.463 c8.27,0,14.979,6.708,14.979,14.979s-6.709,14.978-14.979,14.978C6.708,76.419,0,69.712,0,61.441S6.708,46.463,14.978,46.463 L14.978,46.463z"/></g></svg></div><div class="gs-toc-list-wrap">.</div>';
    document.querySelector('.entry-content').prepend(TOCdiv);

    document.querySelector('.gs-toc-mobile').addEventListener("click", function (ev) {
        document.querySelector('.gs-toc').classList.toggle('mobileactive');
    } );

};
const onFRTOCInteraction = () => {

    const TocScript = document.createElement("script");
    TocScript.src = tocvars.path+'/assets/toc/tocbot.min.js';
    document.body.appendChild(TocScript);

    setTimeout(() =>{
        tocbot.init({
            tocSelector: '.gs-toc-list-wrap',
            contentSelector: '.entry-content',
            headingSelector: 'h2, h3',
            hasInnerContainers: true,
            isCollapsedClass: 'gs-toc-collapsed',
            collapsibleClass: 'gs-toc-collapsible',
        });
    }, 500);

};
document.addEventListener('DOMContentLoaded', (event) => {onFRTOCDiv();});
window.addEventListener("scroll", onFRTOCInteraction, { once: true });