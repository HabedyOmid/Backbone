# BackBone - WP Theme & Laravel Mix

## Requirements:
You need to have `node.js`, and `npm` installed globally on your system to use **Laravel Mix** build-tool.
-   [node.js](https://nodejs.org/en/) - is a JavaScript runtime built on Chrome's V8 JavaScript engine.
-   [npm](https://www.npmjs.com/) - is node.js package manager for installing open-source JavaScript apps.

## Installation:
Once **node.js** and **npm** installation is completed. Open `themes/BackBone` theme folder within your terminal and run `npm install` command to install all dependencies for build-tool.

## Technologies & Features:
Laravel Mix is using `WebPack` build-tool and some additional features:
* `sass` compiles SASS to CSS and minify CSS for production
* `babel` compile and minifies JS files, adding support for ES5, ES6... for older browsers
* `browser-sync` watch for file changes and apply changes to browser real-time
* `autoprefixer` adding CSS prefixers for all browsers support
* `purgecss` to remove unused CSS from project files, significantly reduces css file size for better performance and page speed optimization

**NOTE:** to edit/update build-tool configuration visit `themes/BackBone/webpack.mix.js` file

| Command        | Descriptions                                                                            |
| -------------- | --------------------------------------------------------------------------------------- |
| `npm install`         | Installing build-tools dependencies                                                     |
| `npx mix`             | Compiles SASS to CSS, Babel to compile and bundle JS files                              |
| `npx mix watch`       | Compiles and watches file(SASS, CSS, JS and PHP) changes using `BrowserSync`            |
| `npx mix --production`| Compiles & minifies all assets for production optimize CSS using `PurgeCSS`             |