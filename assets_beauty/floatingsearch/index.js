"use strict";
let floatingsearch = document.querySelector(".is-style-floating-white-search");
if(floatingsearch != null){
    //floatingsearch.querySelector('.wp-block-search__input').required = false;
    let floatingform = floatingsearch.cloneNode(true);
    let newDiv = document.createElement("div");
    floatingform.classList.remove('is-style-floating-white-search');
    newDiv.appendChild(floatingform);
    newDiv.classList.add('gs-floating-search-block');
    document.body.appendChild(newDiv);

    let btn = floatingsearch.querySelector('.wp-block-search__button');
    btn.addEventListener('click', function (ev) {
        ev.preventDefault();
        let offset = 0;
        let headerel = document.querySelector('header > div');
        if(headerel !== null){
            if(document.querySelector('header').classList.contains('gs-sticky-enable')){
                headerel = document.querySelector('header');
            }
            offset = headerel.clientHeight;
            let topposition = headerel.getBoundingClientRect().top;
            newDiv.style.top = topposition+offset-2+'px';
        }
        newDiv.classList.toggle('gs-floatsearch-active');
    });
    document.addEventListener('click', function (ev) {
        if(ev.target.closest('.gs-floating-search-block') === null && ev.target.closest('.wp-block-search__button') === null && newDiv.classList.contains('gs-floatsearch-active')){
            newDiv.classList.toggle('gs-floatsearch-active');
        }
    });
}