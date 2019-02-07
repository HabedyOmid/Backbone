 // Gulp file
var gulp         = require('gulp');
var wait         = require('gulp-wait');
var sass         = require('gulp-sass');
var postcss      = require('gulp-postcss');
var csscomb      = require('gulp-csscomb');
var cleanCSS     = require('gulp-clean-css');
var uglify       = require('gulp-uglify');
var concat       = require('gulp-concat');
var autoprefixer = require('gulp-autoprefixer');


// Define paths
var paths = {
    src: {
        root: '../',
        css:  'css',
        html: '**/*.html',
        js:   'js/*.js',
        scss: 'scss/**/*.scss',
    }
}

// Compile SCSS
gulp.task('sass', function() {
    return gulp.src(paths.src.scss)

    .pipe(wait(500))
    .pipe(sass().on('error', sass.logError))
    .pipe(postcss([require('postcss-flexbugs-fixes')]))
    .pipe(autoprefixer({
        browsers: ['> 1%']
    }))

    .pipe(csscomb())
    .pipe(gulp.dest(paths.src.css))
});

// Minify CSS
gulp.task('css', function() {
    return gulp.src([
        paths.src.css + '/style.css'
    ])

    .pipe(cleanCSS())
    .pipe(gulp.dest(paths.src.root))
});

// Minify JS
gulp.task('js', function() {
    return gulp.src(paths.src.js)

    .pipe(concat("backbone.js"))
    .pipe(uglify())
    .pipe(gulp.dest(paths.src.root))
});

// Watch for SASS/CSS/JS/HTML Changes
gulp.task('watch', ['sass'], function() {
    gulp.watch(paths.src.scss, ['sass']);
    gulp.watch(paths.src.css + '/*.css', ['css']);
    gulp.watch(paths.src.root + '/assets/js/*.js', ['js']);
});

// Default = Watch
gulp.task('default', ['watch']);