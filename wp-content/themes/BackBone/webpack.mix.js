let mix = require('laravel-mix')
require('laravel-mix-purgecss');

// Bundle .JS files
 mix.babel([
    './src/js/jquery-3.4.1.min.js',
    './src/js/bootstrap.bundle.min.js', 
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
        proxy: 'https://energybuddy.test',
        files: ['./**/*.php', './src/js/**/*.js', 'src/scss/**/*.scss']
    });