let mix = require('laravel-mix')
require('laravel-mix-purgecss');

// Bundle .JS files
 mix.babel([
    './src/js/bootstrap.affix.js',
    './src/js/aos.js', 
    './src/js/anim.js', 
    './src/js/slick.min.js', 
    './src/js/app.js'], './app.js')

    // Compile sass files
    .sass('./src/scss/app.scss', './style.css')

    .purgeCss({
        content: ['./*.php', './sections/*.php', './components/*.php'],
        css: ['./style.css']
    })

    // Mix options
    .options({
        postCss: [
            require('autoprefixer')
        ],
        processCssUrls: false,
        terser: {}, 
        postCss: '',
    }) 

    // Auto Reload
    .browserSync({
        proxy: 'https://ztcorporate.test',
        files: ['./**/*.php', './src/js/**/*.js', 'src/scss/**/*.scss']
    });