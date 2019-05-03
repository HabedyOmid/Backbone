// node.js Packages / Dependencies
const gulp          = require('gulp');
const sass          = require('gulp-sass');
const uglify        = require('gulp-uglify');
const concat        = require('gulp-concat');
const cleanCSS      = require('gulp-clean-css');
const imageMin      = require('gulp-imagemin');
const pngQuint      = require('imagemin-pngquant'); 
const browserSync   = require('browser-sync').create();
const autoprefixer  = require('gulp-autoprefixer');
const jpgRecompress = require('imagemin-jpeg-recompress'); 


// Paths
var paths = {
    src: {
        css: 'css/',
        php: '../**/*.php',
        js:  'js/**/*.js',
        scss:'scss/**/*.scss',
        img: '../../../uploads/**/*.+(png|jpg|gif|svg)'
    },
    dist: {
        root:'../',
        css: '../*.css',
        img: '../../../uploads/'
    }
}


// Compile SCSS
gulp.task('sass', function() {
    return gulp.src(paths.src.scss)
        .pipe(sass().on('error', sass.logError))
        .pipe(gulp.dest(paths.src.css))
});


// Minify + AutoPreFixer + Combine CSS
gulp.task('css', function() {
    return gulp.src(paths.src.css + '/*.css')
        .pipe(autoprefixer({
            browsers: ['last 10 versions'],
            cascade: false
        }))
        .pipe(cleanCSS({compatibility: 'ie8'}))
        .pipe(concat('style.css'))
        .pipe(gulp.dest(paths.dist.root))
});


// Minify + Combine JS
gulp.task('js', function() {
    return gulp.src(paths.src.js)
        .pipe(uglify())
        .pipe(concat('backbone.js'))
        .pipe(gulp.dest(paths.dist.root))
});


// Compress (JPEG, PNG, GIF, SVG)
gulp.task('img', function(){
    return gulp.src(paths.src.img)
    .pipe(imageMin([
        imageMin.gifsicle(),
        imageMin.jpegtran(),
        imageMin.optipng(),
        imageMin.svgo(),
        pngQuint(),
        jpgRecompress()
    ]))
    .pipe(gulp.dest(paths.dist.img));
});


// Prepare all assets for production
gulp.task('build', gulp.series('sass', 'css', 'js', 'img'));


// Watch (SASS, CSS, JS, and HTML) reload browser on change
gulp.task('watch', function() {
    browserSync.init({
        proxy: "https://versacreative.test",
        notify: true
    });
    gulp.watch(paths.src.scss, gulp.series('sass')).on('change', browserSync.reload);
    gulp.watch(paths.src.css, gulp.series('css')).on('change', browserSync.reload);
    gulp.watch(paths.src.js, gulp.series('js')).on('change', browserSync.reload);
    gulp.watch(paths.src.php).on('change', browserSync.reload);
});