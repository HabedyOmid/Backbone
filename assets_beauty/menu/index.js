"use strict";

const BSMegaMenuInit = () => {
    let greenshiftmegamenus = document.querySelectorAll('.wp-block-navigation-item.is-style-gs-megamenufull');
    for (let i = 0; i < greenshiftmegamenus.length; i++) {
        let obj = greenshiftmegamenus[i];
        let objsize = obj.getBoundingClientRect();
        let topamount = objsize.y + objsize.height - 0.1;
        let menu = obj.querySelector('.wp-block-navigation__submenu-container');
        menu.style.top = topamount + 'px';
    }
}

BSMegaMenuInit();
window.addEventListener("resize", BSMegaMenuInit);