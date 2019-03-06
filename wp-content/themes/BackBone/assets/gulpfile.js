// node.js Packages / Dependencies
const gulp          = require('gulp');
const sass          = require('gulp-sass');
const uglify        = require('gulp-uglify');
const concat        = require('gulp-concat');
const cleanCSS      = require('gulp-clean-css');
const browserSync   = require('browser-sync').create();
const autoprefixer  = require('gulp-autoprefixer');


// Paths
var paths = {
    root: {
        root: '../',
        node: 'node_modules'
    },
    src: {
        css: 'css/',
        php: '../**/*.php',
        js:  'js/**/*.js',
        scss:'scss/**/*.scss',
    }
}


// Compile SCSS
gulp.task('sass', function() {
    return gulp.src(paths.src.scss)

    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest(paths.src.css))
    .pipe(browserSync.stream());
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
    .pipe(gulp.dest(paths.root.root))
});


// Minify + Combine JS
gulp.task('js', function() {
    return gulp.src(paths.src.js)
    .pipe(uglify())
    .pipe(concat('backbone.js'))
    .pipe(gulp.dest(paths.root.root))
    .pipe(browserSync.stream());
});


// Prepare all assets for production
gulp.task('build', gulp.series('sass', 'css', 'js'));


// Watch (SASS, CSS, JS, and HTML) reload browser on change
gulp.task('watch', function() {
    browserSync.init({
        server: {
            baseDir: paths.root
        } 
    })

    gulp.watch(paths.src.scss, gulp.series('sass'));
    gulp.watch(paths.src.css, gulp.series('css'));
    gulp.watch(paths.src.js, gulp.series('js'));
    gulp.watch(paths.src.php).on('change', browserSync.reload);
});