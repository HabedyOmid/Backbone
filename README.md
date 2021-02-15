# BackBone - WP Theme & Laravel Mix

### Requirements:
You need to have `node.js`, and `npm` installed globally on your system to use **Laravel Mix** build-tool.

-   [node.js](https://nodejs.org/en/) - is a JavaScript runtime built on Chrome's V8 JavaScript engine.
-   [npm](https://www.npmjs.com/) - is node.js package manager for installing open-source JavaScript apps.

### Installation:
Once **node.js** and **npm** installation is completed. Open `themes/BackBone` theme folder within your terminal and run `npm install` command to install all dependencies for build-tool.

| Command        | Descriptions                                                                            |
| -------------- | --------------------------------------------------------------------------------------- |
| `npm install`  | Installing build-tools dependencies                                                     |
| `npx mix`      | Compiles SASS to CSS, Babel to compile and bundle JS files                              |
| `npx mix watch`| Compiles all assets and watch for file (SASS, CSS, JS and PHP) changes using `BrowserSync`|
| `gulp js`      | Compile, minify and combine JS files to a single file. Babel (ES5, ES6) support enabled |
| `gulp imgs`    | Compress and optimize image (`.png`, `.jpg`, `.gif` and `.svg`) graphic files           |
| `gulp vendors` | Copy all vendors / plugins lib files from src to dist directory                         |
| `gulp clean`   | Delete dist directory, use `gulp build` for fresh rebuilt                               |
| `gulp build`   | Build dist production directory from src directory                                      |
| `gulp watch`   | Watching and reloading browser on changes to (`.scss`, `.css`, `.js` and `.html`) files |
| `npm start`    | Alternative command for `gulp watch` command                                            |
