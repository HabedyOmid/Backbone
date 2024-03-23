<?php
// Exit if accessed directly.
if (!defined('ABSPATH')) {
    exit;
}
?>
<style>

.gs-settings-contact-sidebar {
    padding-top: 15px;
    margin-top: 15px;
    border-top-style: solid;
    border-top-width: 1px;
    border-top-color: #eaeef1;
    display: flex;
    flex-direction: column;
    gap:12px
}
.gs-settings-contact-sidebar-social{
    display: flex;
    gap:8px;
    align-items: center;
    text-decoration: none;
}

#gspb_image-id-gsbp-1286d0f0-1ae9 img {
    vertical-align: top;
    display: inline-block;
    box-sizing: border-box;
    max-width: 100%;
    width: nullpx;
    height: 22px
}

#gspb_image-id-gsbp-1286d0f0-1ae9 {
    height: 22px
}

.gspb_text-id-gsbp-d1cca294-fdf1 {
    font-size: 15px;
    color: #5a5a5a
}

#gspb_button-id-gsbp-f10bf7a1-69a3 {
    display: flex;
    justify-content: center
}

#gspb_button-id-gsbp-f10bf7a1-69a3 .gspb-buttonbox-text {
    display: flex;
    flex-direction: column
}

#gspb_button-id-gsbp-f10bf7a1-69a3>.gspb-buttonbox {
    box-sizing: border-box;
    margin-bottom: 30px;
    padding-top: 10px;
    padding-bottom: 10px;
    background-image: linear-gradient(135deg, #f5498a 0, #ff6758 19%, #ff6518 61%, #ffb124 100%);
    width: 100%;
    font-size: 18px;
    padding: calc(0.667em + 2px) calc(1.333em + 2px);
    color: #fff;
    border-radius: 5px;
    text-align: center !important
}

#gspb_button-id-gsbp-f10bf7a1-69a3>.gspb-buttonbox .gsap-g-line {
    text-align: center !important
}

#gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList .gspb_iconsList__item__text {
    margin-left: 15px
}

#gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList .gspb_iconsList__item {
    display: flex;
    flex-direction: row;
    align-items: center;
    position: relative;
    font-size: 14px;
    color: #323340;
    margin-bottom: 18px;
    width: 100%;
    box-sizing: border-box;
}

#gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList .gspb_iconsList__item.active {
    background: white;
    padding: 8px 14px;
    border-style: solid;
    border-width: 1px;
    border-color: #e5e8ec;
    border-radius: 4px;
    box-shadow: 0 3px 1px #edf2f654;
}

#gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList .gspb_iconsList__item svg path {
    fill: #808696 !important
}

body #gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList .gspb_iconsList__item img,
body #gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList .gspb_iconsList__item svg {
    margin: 0 -5px 0 0 !important
}

#gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList [data-id='0'] svg,
#gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList [data-id='1'] svg,
#gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList [data-id='2'] svg,
#gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList [data-id='3'] svg,
#gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList [data-id='4'] svg,
#gspb_iconsList-id-gsbp-843b958c-d873.gspb_iconsList [data-id='5'] svg {
    margin: 0 !important
}

#gspb_button-id-gsbp-4d513305-5349 {
    display: flex;
    justify-content: flex-start
}

#gspb_button-id-gsbp-4d513305-5349 .gspb-buttonbox-text {
    display: flex;
    flex-direction: column
}

#gspb_button-id-gsbp-4d513305-5349>.gspb-buttonbox {
    box-sizing: border-box;
    padding: 4px 14px;
    background-color: #fff;
    font-size: 13px;
    text-align: center !important;
    color: #000;
    border-style: solid;
    border-width: 1px;
    border-color: #e5e8ec;
    border-radius: 4px;
}

#gspb_button-id-gsbp-4d513305-5349>.gspb-buttonbox .gsap-g-line {
    text-align: center !important
}

#gspb_heading-id-gsbp-ca0b0ada-6561 {
    font-size: 20px;
    font-weight: 600 !important;
    margin: 0;
    padding: 0
}

.gspb_text-id-gsbp-2c96ad79-8324,
.gspb_text-id-gsbp-557ed921-38fe,
.gspb_text-id-gsbp-94bd1cf0-c77b,
.gspb_text-id-gsbp-f27becf0-4d87 {
    font-size: 15px;
    padding: 13px 0 !important
}

body .gs-tab-active {
    border-style: none none solid;
    border-bottom-width: 2px;
    border-bottom-color: #127dff;
    color: #127dff
}

.gspb_text-id-gsbp-2dbc1d22-6228 {
    font-size: 17px;
    padding: 13px 0 !important
}

#gspb_container-id-gsbp-ead11204-4841.gspb_container {
    position: relative;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    padding: 3vw 5vw;
    background-color: #f8fafc
}

#gspb_container-id-gsbp-01099b45-f36b.gspb_container>p:last-of-type,
#gspb_container-id-gsbp-306c24ec-8b8e.gspb_container>p:last-of-type,
#gspb_container-id-gsbp-7b4f8e8f-1a69.gspb_container>p:last-of-type,
#gspb_container-id-gsbp-89d45563-1559.gspb_container>p:last-of-type,
#gspb_container-id-gsbp-cbc3fa8c-bb26.gspb_container>p:last-of-type,
#gspb_container-id-gsbp-e6dccbfa-f119.gspb_container>p:last-of-type,
#gspb_container-id-gsbp-ead11204-4841.gspb_container>p:last-of-type,
#gspb_container-id-gsbp-ecfa9f32-682f.gspb_container>p:last-of-type,
#gspb_container-id-gsbp-efb64efe-d083.gspb_container>p:last-of-type {
    margin-bottom: 0
}

body #gspb_container-id-gsbp-ead11204-4841.gspb_container {
    min-height: 100vh
}

#gspb_container-id-gsbp-cbc3fa8c-bb26.gspb_container {
    position: relative;
    flex-direction: column;
    box-sizing: border-box;
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    row-gap: 20px;
    column-gap: 20px;
    grid-template: auto/250px minmax(500px, 1000px)
}

body #gspb_container-id-gsbp-cbc3fa8c-bb26.gspb_container {
    flex-grow: 1;
    max-width: 1200px
}

@media (max-width: 575.98px) {
    #gspb_container-id-gsbp-cbc3fa8c-bb26.gspb_container {
        grid-template-columns: repeat(1, minmax(0, 1fr));
        grid-template: auto/1fr
    }
}

#gspb_container-id-gsbp-cbc3fa8c-bb26.gspb_container {
    margin-right: auto;
    margin-left: auto;
    padding: 8px;
    border-style: solid;
    border-width: 1px;
    border-color: #eaeef1
}

#gspb_container-id-gsbp-cbc3fa8c-bb26.gspb_container,
#gspb_container-id-gsbp-cbc3fa8c-bb26.gspb_container>.gspb_backgroundOverlay {
    border-top-left-radius: 20px;
    border-top-right-radius: 20px;
    border-bottom-right-radius: 20px;
    border-bottom-left-radius: 20px
}

#gspb_container-id-gsbp-ecfa9f32-682f.gspb_container {
    display: flex;
    justify-content: space-between;
    padding: 20px 10px 12px
}

#gspb_container-id-gsbp-306c24ec-8b8e.gspb_container,
#gspb_container-id-gsbp-ecfa9f32-682f.gspb_container {
    position: relative;
    flex-direction: column;
    box-sizing: border-box
}

#gspb_container-id-gsbp-89d45563-1559.gspb_container {
    position: relative;
    flex-direction: column;
    box-sizing: border-box;
    box-shadow: 0 2px 4px 0 #a7b7cc47;
    background-color: #fff
}

#gspb_container-id-gsbp-89d45563-1559.gspb_container,
#gspb_container-id-gsbp-89d45563-1559.gspb_container>.gspb_backgroundOverlay {
    border-top-left-radius: 14px;
    border-top-right-radius: 14px;
    border-bottom-right-radius: 14px;
    border-bottom-left-radius: 14px
}

#gspb_container-id-gsbp-01099b45-f36b.gspb_container,
#gspb_container-id-gsbp-efb64efe-d083.gspb_container {
    position: relative;
    box-sizing: border-box;
    border-bottom-style: solid;
    border-bottom-width: 1px;
    border-bottom-color: #eaeef1
}

#gspb_container-id-gsbp-efb64efe-d083.gspb_container {
    flex-direction: column;
    padding: 20px 25px
}

#gspb_container-id-gsbp-01099b45-f36b.gspb_container {
    display: flex;
    flex-direction: row;
    column-gap: 25px;
    padding-right: 25px;
    padding-left: 25px;
    flex-wrap: wrap;
}

.notice-blocksy-plugin{
    display: none;
}

#gspb_container-id-gsbp-7b4f8e8f-1a69.gspb_container {
    position: relative;
    flex-direction: column;
    box-sizing: border-box;
    padding: 15px 25px
}

.gspb_admin_tabs {
    display: flex;
    gap: 20px;
    margin-bottom: 20px;
}

.gspb_admin_tabs a {
    background: #fff;
    border: 1px solid #dadde2;
    border-radius: 4px;
    cursor: pointer;
    display: inline-block;
    color: #111;
    font-size: 1.1em;
    line-height: 1.5;
    padding: 7px 16px;
    text-decoration: none;

}

.gspb_admin_tabs a.active {
    background: #2184f9;
    color: #fff;
    border-color: #2184f9
}


.gs-box {
    padding: 20px;
    border-left: 5px solid transparent;
    margin-bottom: 20px
}

.gs-box-text>p {
    margin-bottom: 20px;
    margin-top: 0
}

.gs-box-text>p:last-of-type {
    margin-bottom: 0
}

.gs-box.notice_type {
    color: #856404;
    background-color: #fff3cd;
    border-color: #ffeeba
}

.gs-box.notice_type svg {
    fill: #f7a000
}

.gs-box.icon_type {
    display: flex
}

.gs-box.icon_type .gs-box-icon {
    width: 28px;
    min-width: 28px
}

.gs-box.icon_type .gs-box-text {
    flex-grow: 1;
    margin: 0 15px
}

#gspb_infoBox-id-gsbp-158b5f3e-b35c .gs-box-text {
    flex-grow: 1;
    margin: 0
}

#gspb_infoBox-id-gsbp-158b5f3e-b35c .gs-box-icon {
    margin-right: 10px
}

#gspb_infoBox-id-gsbp-158b5f3e-b35c svg {
    height: 22px !important;
    width: 22px !important;
    min-width: 22px !important;
    fill: #5c5c5c !important;
    margin: 0 !important
}

#gspb_infoBox-id-gsbp-158b5f3e-b35c svg path {
    fill: #5c5c5c !important
}

#gspb_infoBox-id-gsbp-158b5f3e-b35c .gs-box {
    color: #866b53
}

.greenshift_form {
    font-size: 15px;
    line-height: 24px;
}

.greenshift_form p {
    font-size: 15px;
    line-height: 24px;
}

#wpcontent {
    background: #f8fafc;
    padding: 0;
}

.wp-element-button {
    text-decoration: none;
}

.gspb_iconsList__link {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}

#wpfooter,
.notice-error {
    display: none !important;
}

.wp-core-ui .button-primary {
    background-color: #2184f9;
}

.greenshift_form__general .actions-wrap .remove-last-font {
    background: transparent;
    border-color: #cc1818;
    color: #cc1818;
}

.class-tabs-gs a {
    text-decoration: none;
    color: black
}

.form-table {
    margin-bottom: 20px
}

.form-table td {
    padding-left: 0
}

.form-table tr td:first-child {
    width: 40%;
}

.settings-container{
    position: relative;
box-sizing: border-box;
border-bottom-style: solid;
border-bottom-width: 1px;
border-bottom-color: #eaeef1;
padding: 20px 0;
}

/* file upload button */
input[type="file"]::file-selector-button {
    border-radius: 4px;
    padding: 0 16px;
    height: 40px;
    cursor: pointer;
    background-color: white;
    border: 1px solid rgba(0, 0, 0, 0.16);
    box-shadow: 0px 1px 0px rgba(0, 0, 0, 0.05);
    margin-right: 16px;
    transition: background-color 200ms;
  }
  
  /* file upload button hover state */
  input[type="file"]::file-selector-button:hover {
    background-color: #f3f4f6;
  }
  
  /* file upload button active state */
  input[type="file"]::file-selector-button:active {
    background-color: #e5e7eb;
  }

  .gspb-field-area input[type="text"]{
    border: none;
    box-sizing: border-box;
    padding: 10px;
    border-bottom: 1px solid #eef1f4;
    width:100%;
  }

  input[type="color"] {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    width: 40px;
    height: 40px;
    background-color: transparent;
    border: none;
    min-width: 40px;
    cursor: pointer;
  }
  input[type="color"]::-webkit-color-swatch {
    border-radius: 5px;
    border: 1px solid #eef1f4;
  }
  input[type="color"]::-moz-color-swatch {
    border-radius: 5px;
    border: 1px solid #eef1f4;
  }

    .gspb_iconsList__item a{text-decoration: none; color:#fff; }
    .gspb_iconsList__item a .gspb_iconsList__iconbox{transition: all 0.4s;}
    .gspb_iconsList__item a:hover .gspb_iconsList__iconbox{transform: scale(1.1);}
    body #gspb_container-id-gsbp-cbc3fa8c-bb26.gspb_container {
        max-width: 1300px !important
    }

    #gspb_svgBox-id-gsbp-a064e742-de4e {
        display: flex
    }

    @media (max-width:1200px) {
        body #gspb_svgBox-id-gsbp-a064e742-de4e {
            display: none !important
        }
    }

    @media (min-width:576px) and (max-width:767.98px) {
        body #gspb_svgBox-id-gsbp-a064e742-de4e {
            display: none !important
        }
    }

    #gspb_svgBox-id-gsbp-a064e742-de4e {
        position: absolute;
        z-index: 22;
        top: 135px;
        left: -50px
    }

    #gspb_svgBox-id-gsbp-a064e742-de4e svg {
        width: 200px !important;
        overflow: visible;
        height: 133px !important;
        max-width: 100%
    }

    #gspb_image-id-gsbp-39406707-6d0b img,
    #gspb_image-id-gsbp-7f102a1f-e4d6 img {
        vertical-align: top;
        display: inline-block;
        box-sizing: border-box;
        max-width: 100%;
        width: nullpx;
        height: 73px
    }

    @media (max-width:575.98px) {
        body #gspb_image-id-gsbp-39406707-6d0b {
            display: none !important
        }
    }

    #gspb_image-id-gsbp-39406707-6d0b {
        position: absolute;
        z-index: 2;
        top: 213px;
        right: 48px
    }

    #gspb_image-id-gsbp-39406707-6d0b {
        height: 73px
    }

    #gspb_heading-id-gsbp-24678795-b56e {
        font-size: 41px;
        line-height: 46px
    }

    @media (max-width:767.98px) {
        #gspb_heading-id-gsbp-24678795-b56e {
            font-size: 32px
        }
    }

    @media (max-width:575.98px) {
        #gspb_heading-id-gsbp-24678795-b56e {
            line-height: 38px
        }
    }

    #gspb_heading-id-gsbp-24678795-b56e {
        color: #fff;
        margin-top: 0;
        margin-bottom: 10px
    }

    @media (max-width:575.98px) {
        #gspb_heading-id-gsbp-24678795-b56e {
            margin-top: 0;
            margin-bottom: 10px
        }
    }

    #gspb_heading-id-gsbp-f277e577-489b {
        font-size: 35px;
        line-height: 40px
    }

    @media (max-width:767.98px) {
        #gspb_heading-id-gsbp-f277e577-489b {
            font-size: 28px;
            line-height: 32px
        }
    }

    #gspb_heading-id-gsbp-f277e577-489b {
        font-weight: 700 !important;
        background-image: linear-gradient(135deg, #ffa042 0, #e00 47%, #937cf5 100%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        margin-bottom: 0
    }

    #gspb_heading-id-gsbp-4bd95d18-7d9d {
        font-size: 15px;
        color: #a0a2b4;
        margin-bottom: 30px;
        max-width: 420px;
        line-height: 24px;
    }

    #gspb_svgBox-id-gsbp-2d708d58-a895 {
        display: flex;
        margin-bottom: 6px
    }

    #gspb_svgBox-id-gsbp-2d708d58-a895 svg {
        width: 140px !important;
        overflow: visible
    }

    @media (max-width:575.98px) {
        #gspb_svgBox-id-gsbp-2d708d58-a895 svg {
            width: 79px !important
        }
    }

    #gspb_svgBox-id-gsbp-2d708d58-a895 svg {
        height: 66px !important
    }

    @media (max-width:575.98px) {
        #gspb_svgBox-id-gsbp-2d708d58-a895 svg {
            height: 50px !important
        }
    }

    #gspb_svgBox-id-gsbp-2d708d58-a895 svg,
    #gspb_svgBox-id-gsbp-2d708d58-a895 svg path {
        fill: #ffffff7d !important
    }

    #gspb_svgBox-id-gsbp-2d708d58-a895 svg {
        max-width: 100%
    }

    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList .gspb_iconsList__item__text {
        margin-left: 15px
    }

    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList .gspb_iconsList__item {
        display: flex;
        flex-direction: row;
        align-items: center;
        position: relative
    }

    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList .gspb_iconsList__item svg path {
        fill: #635cff !important
    }

    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList .gspb_iconsList__item img,
    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList .gspb_iconsList__item svg {
        width: 12px !important;
        height: 12px !important;
        min-width: 12px
    }

    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList .gspb_iconsList__iconbox {
        border-radius: 50%;
        padding: 7px;
        background-color: #f1f0ff;
        display: inline-flex;
        margin: 0 !important
    }

    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList .gspb_iconsList__popoverWrapper {
        margin: 0 !important
    }

    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList .gspb_iconsList__item {
        font-size: 16px;
        color: #fff;
        margin-bottom: 15px
    }

    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList {
        margin-bottom: 40px
    }

    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList [data-id='0'] svg,
    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList [data-id='1'] svg,
    #gspb_iconsList-id-gsbp-68c38de4-80e9.gspb_iconsList [data-id='2'] svg {
        margin: 0 !important
    }

    #gspb_row-id-gsbp-e3474acb-2e7f {
        justify-content: space-between;
        margin-top: 0;
        margin-bottom: 0;
        position: relative;
        display: flex;
        flex-wrap: wrap
    }

    #gspb_row-id-gsbp-9dbd0a17-1f16>.gspb_row__content,
    #gspb_row-id-gsbp-e3474acb-2e7f>.gspb_row__content {
        display: flex;
        justify-content: space-between;
        margin: 0 auto;
        width: 100%;
        flex-wrap: wrap;
    }

    #gspb_row-id-gsbp-9dbd0a17-1f16 div[id^=gspb_col-id],
    #gspb_row-id-gsbp-e3474acb-2e7f div[id^=gspb_col-id] {
        position: relative;
        padding: 15px min(3vw, 20px);
        box-sizing: border-box
    }

    #gspb_row-id-gsbp-9dbd0a17-1f16>.gspb_row__content,
    #gspb_row-id-gsbp-e3474acb-2e7f>.gspb_row__content {
        max-width: var(--wp--style--global--wide-size, 1200px)
    }

    #gspb_image-id-gsbp-7f102a1f-e4d6 {
        text-align: center;
        margin-top: 0;
        height: 470px
    }

    #gspb_image-id-gsbp-7f102a1f-e4d6 img {
        object-fit: contain;
        object-position: 100% 50%;
        vertical-align: bottom;
        width: auto;
        height: 470px
    }

    @media (max-width:767.98px) {

        #gspb_image-id-gsbp-7f102a1f-e4d6,
        #gspb_image-id-gsbp-7f102a1f-e4d6 img {
            height: 259px
        }
    }

    @media (max-width:575.98px) {

        #gspb_image-id-gsbp-7f102a1f-e4d6,
        #gspb_image-id-gsbp-7f102a1f-e4d6 img {
            height: 173px
        }
    }

    #gspb_row-id-gsbp-9dbd0a17-1f16 {
        justify-content: space-between;
        margin-top: 0;
        margin-bottom: 0;
        position: relative;
        display: flex;
        flex-wrap: wrap;
        padding: 20px 50px 0
    }

    @media (max-width:575.98px) {
        #gspb_row-id-gsbp-9dbd0a17-1f16 {
            padding-right: 10px;
            padding-left: 10px
        }
    }

    #gspb_row-id-gsbp-9dbd0a17-1f16>.gspb_backgroundOverlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: -1;
        transition: transform .5s cubic-bezier(.165, .84, .44, 1), opacity .5s ease, clip-path .5s ease;
        transform: scale(0) rotate(0deg) translateX(0) translateY(0);
        will-change: transform, opacity, clip-path;
        opacity: 0
    }

    #gspb_row-id-gsbp-9dbd0a17-1f16>.gspb_backgroundOverlay.gspb-inview-active {
        transform: scale(1) rotate(0deg) translateX(0) translateY(0);
        opacity: 1;
        background-image: url(<?php echo GREENSHIFT_THEME_DIR . '/inc/admin_menu/onboard/img/bg-kvad.webp'; ?>);
        background-size: contain;
        background-repeat: no-repeat;
        background-position: 50% 0
    }

    #gspb_row-id-gsbp-9dbd0a17-1f16 {
        overflow: hidden;
        z-index: 0
    }

    #gspb_row-id-gsbp-9dbd0a17-1f16 {
        position: relative;
        z-index: 1
    }

    #gspb_container-id-gsbp-89d45563-1559.gspb_container {
        position: relative;
        flex-direction: column;
        box-sizing: border-box;
        box-shadow: 0 2px 4px 0 #a7b7cc47;
        overflow: hidden;
        border-top-left-radius: 14px;
        border-top-right-radius: 14px;
        border-bottom-right-radius: 14px;
        border-bottom-left-radius: 14px;
        background-color: #1a1b20 !important;
        background-size: contain;
        background-repeat: no-repeat;
        background-position: 100% 100%;
        min-height: 750px;
    }

    #gspb_container-id-gsbp-710c6e65-d7c0.gspb_container>p:last-of-type,
    #gspb_container-id-gsbp-89d45563-1559.gspb_container>p:last-of-type {
        margin-bottom: 0
    }

    #gspb_container-id-gsbp-89d45563-1559.gspb_container {
        position: relative
    }

    #gspb_container-id-gsbp-89d45563-1559.gspb_container>.gspb_backgroundOverlay {
        border-top-left-radius: 14px;
        border-top-right-radius: 14px;
        border-bottom-right-radius: 14px;
        border-bottom-left-radius: 14px
    }

    #gspb_col-id-gsbp-ce8bb40f-6668.gspb_row__col--12 {
        width: 100%
    }

    @media (max-width:575.98px) {
        #gspb_col-id-gsbp-ce8bb40f-6668.gspb_row__col--12 {
            width: 100%
        }
    }

    .gspb_row #gspb_col-id-gsbp-ce8bb40f-6668.gspb_row__col--12 {
        padding: 0
    }

    #gspb_col-id-gsbp-87fcdd13-3cca.gspb_row__col--6 {
        width: 50%
    }

    @media (max-width:991.98px) {
        #gspb_col-id-gsbp-87fcdd13-3cca.gspb_row__col--6 {
            width: 100%
        }
    }

    @media (max-width:767.98px) {
        #gspb_col-id-gsbp-87fcdd13-3cca.gspb_row__col--6 {
            width: 100%
        }
    }

    @media (max-width:575.98px) {
        #gspb_col-id-gsbp-87fcdd13-3cca.gspb_row__col--6 {
            width: 100%
        }
    }

    @media (min-width:992px) {
        #gspb_col-id-gsbp-87fcdd13-3cca.gspb_row__col--6 {
            width: calc(56% - 0px - 0px)
        }
    }

    @media (max-width:991.98px) {
        .gspb_row #gspb_col-id-gsbp-87fcdd13-3cca.gspb_row__col--6 {
            padding-bottom: 40px
        }
    }

    @media (max-width:767.98px) {
        .gspb_row #gspb_col-id-gsbp-87fcdd13-3cca.gspb_row__col--6 {
            padding-bottom: 0
        }
    }

    #gspb_container-id-gsbp-710c6e65-d7c0.gspb_container {
        position: relative;
        box-sizing: border-box;
        display: flex;
        flex-direction: row;
        margin-bottom: 24px
    }

    #gspb_col-id-gsbp-ef18bb47-90f1.gspb_row__col--6 {
        width: 50%
    }

    @media (max-width:991.98px) {
        #gspb_col-id-gsbp-ef18bb47-90f1.gspb_row__col--6 {
            width: 100%
        }
    }

    @media (max-width:767.98px) {
        #gspb_col-id-gsbp-ef18bb47-90f1.gspb_row__col--6 {
            width: 100%
        }
    }

    @media (max-width:575.98px) {
        #gspb_col-id-gsbp-ef18bb47-90f1.gspb_row__col--6 {
            width: 100%
        }
    }

    @media (min-width:992px) {
        #gspb_col-id-gsbp-ef18bb47-90f1.gspb_row__col--6 {
            width: calc(44% - 0px - 0px)
        }
    }

    a.btngs{
        display: inline-block;
        padding: 10px 20px;
        background-color: #7854F7;
        color: #fff;
        border-radius: 5px;
        text-decoration: none;
        margin-top: 10px;
        margin-bottom: 100px;
        font-size: 18px;

    }
    .gspbposimage img{
        position: absolute;
        z-index: 2;
        bottom: 0;
        right: 0;
        height:auto;
        max-width: 100%;
        pointer-events: none;
    }
</style>

<div class="wp-block-greenshift-blocks-container alignfull gspb_container gspb_container-gsbp-ead11204-4841" id="gspb_container-id-gsbp-ead11204-4841">
    <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-cbc3fa8c-bb26" id="gspb_container-id-gsbp-cbc3fa8c-bb26">

        <?php $activetab = 'start'; ?>
        <?php if (defined('GREENSHIFT_DIR_PATH')) :?>
            <?php include(GREENSHIFT_DIR_PATH . 'templates/admin/navleft.php');?>
        <?php else:?>
            <?php include(GREENSHIFT_THEME_PATH . '/inc/admin_menu/navleft.php');?>
        <?php endif;?>

        <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-89d45563-1559" id="gspb_container-id-gsbp-89d45563-1559">
            
            <div class="wp-block-greenshift-blocks-row alignfull gspb_row gspb_row-id-gsbp-9dbd0a17-1f16" id="gspb_row-id-gsbp-9dbd0a17-1f16">
                <div class="gspb_backgroundOverlay gspb-inview gspb-inview-active"></div>
                <div class="gspb_row__content">
                    <div class="wp-block-greenshift-blocks-row-column gspb_row__col--12 gspb_col-id-gsbp-ce8bb40f-6668" id="gspb_col-id-gsbp-ce8bb40f-6668">
                        <div class="wp-block-greenshift-blocks-row gspb_row gspb_row-id-gsbp-e3474acb-2e7f" id="gspb_row-id-gsbp-e3474acb-2e7f">
                            <div class="gspb_row__content">
                                <div class="wp-block-greenshift-blocks-row-column gspb_row__col--6 gspb_row__col--md-12 gspb_row__col--sm-12 gspb_col-id-gsbp-87fcdd13-3cca" id="gspb_col-id-gsbp-87fcdd13-3cca">
                                    <h2 id="gspb_heading-id-gsbp-24678795-b56e" class="gspb_heading gspb_heading-id-gsbp-24678795-b56e "><?php esc_html_e("Welcome to Greenshift", 'greenshift'); ?></h2>


                                    <div class="wp-block-greenshift-blocks-container gspb_container gspb_container-gsbp-710c6e65-d7c0" id="gspb_container-id-gsbp-710c6e65-d7c0">
                                        <div id="gspb_heading-id-gsbp-f277e577-489b" class="gspb_heading gspb_heading-id-gsbp-f277e577-489b "><?php esc_html_e("Block Theme for WordPress", 'greenshift'); ?></div>
                                    </div>

                                    <?php if (defined('GREENSHIFT_DIR_PATH')) :?>
                                        <div id="gspb_heading-id-gsbp-4bd95d18-7d9d" class="gspb_heading gspb_heading-id-gsbp-4bd95d18-7d9d "><?php esc_html_e("Thank you for installing theme and Greenshift plugin", 'greenshift'); ?></div>
                                        <a class="btngs" href="<?php echo admin_url("admin.php?page=greenshift_theme_settings");?>">
                                            <?php esc_html_e("Theme Configuration", 'greenshift');?> →
                                        </a>
                                    <?php else:?>
                                        <div id="gspb_heading-id-gsbp-4bd95d18-7d9d" class="gspb_heading gspb_heading-id-gsbp-4bd95d18-7d9d "><?php esc_html_e("To get Full Power of this theme, please, install Greenshift Companion plugin", 'greenshift'); ?></div>
                                        <a class="btngs" href="<?php echo admin_url("plugin-install.php?s=Greenshift%2520%25E2%2580%2593%2520animation%2520and%2520page%2520builder%2520blocks&tab=search&type=term");?>">
                                            <?php esc_html_e("Install Core Greenshift plugin", 'greenshift');?> →
                                        </a>
                                    <?php endif;?>
                                </div>



                                <div class="wp-block-greenshift-blocks-row-column gspb_row__col--6 gspb_row__col--md-12 gspb_row__col--sm-12 gspb_col-id-gsbp-ef18bb47-90f1" id="gspb_col-id-gsbp-ef18bb47-90f1">
                                   

                                    <div class="wp-block-greenshift-blocks-iconlist gspb_iconsList gspb_iconsList-id-gsbp-68c38de4-80e9" id="gspb_iconsList-id-gsbp-68c38de4-80e9">
                                        <div class="gspb_iconsList__item" data-id="0">
                                            <a href="https://greenshiftwp.com/learning-center/" target="_blank">
                                                <span class="gspb_iconsList__iconbox">
                                                    <svg width="19" height="22" viewBox="0 0 19 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M19 11L1.69076e-06 22L2.65241e-06 -8.30516e-07L19 11Z" fill="#635CFF"></path>
                                                    </svg>
                                                </span>
                                                <span class="gspb_iconsList__item__text"><?php esc_html_e("Get started with Learning Center", 'greenshift'); ?></span>
                                            </a>
                                        </div>
                                        <div class="gspb_iconsList__item" data-id="1">
                                            <a href="https://greenshiftwp.com/fancylibrary/" target="_blank">
                                                <span class="gspb_iconsList__iconbox">
                                                    <svg width="19" height="22" viewBox="0 0 19 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M19 11L1.69076e-06 22L2.65241e-06 -8.30516e-07L19 11Z" fill="#635CFF"></path>
                                                    </svg>
                                                </span>
                                                <span class="gspb_iconsList__item__text"><?php esc_html_e("Learn extra at Fancy Academy", 'greenshift'); ?></span>
                                            </a>
                                        </div>
                                        <div class="gspb_iconsList__item" data-id="2">
                                            <a href="https://greenshiftwp.com/learning/get-started/get-started-with-gutenberg-editor/" target="_blank">
                                                <span class="gspb_iconsList__iconbox">
                                                    <svg width="19" height="22" viewBox="0 0 19 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M19 11L1.69076e-06 22L2.65241e-06 -8.30516e-07L19 11Z" fill="#635CFF"></path>
                                                    </svg>
                                                </span>
                                                <span class="gspb_iconsList__item__text"><?php esc_html_e("Visit our Video Center", 'greenshift'); ?></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="wp-block-greenshift-blocks-image gspbposimage"><img decoding="async" loading="lazy" src="<?php echo GREENSHIFT_THEME_DIR . '/inc/admin_menu/onboard/img/splash.webp'; ?>" data-src="" alt=""></div>
        </div>
    </div>
</div>
</div>