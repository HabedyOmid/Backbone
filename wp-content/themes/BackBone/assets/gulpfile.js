var gulp         = require('gulp');
var liveReload   = require('gulp-livereload');
var sass         = require('gulp-sass');
var uglifyCSS    = require('gulp-uglifycss');
var uglifyJS     = require('gulp-uglyfly');
var concat       = require('gulp-concat');
var autoPreFixer = require('gulp-autoprefixer');
var imageMin     = require('gulp-imagemin');
var pngQuant     = require('imagemin-pngquant');



// Compile SASS
gulp.task('sass', function() {
    return gulp.src("scss/*.scss")
        .pipe(sass())
        .pipe(concat("backbone.css"))
        .pipe(autoPreFixer('last 2 version', 'safari 5', 'ie 7', 'ie 8', 'ie 9', 'opera 12.1', 'ios 6', 'android 4'))
        .pipe(gulp.dest("css/"));
});

// Uglify CSS
gulp.task('uglifyCSS', function(){
    gulp.src('css/*.css')
        .pipe(concat("backbone.css"))
        .pipe(uglifyCSS({
            "uglyComments": true
        }))
        .pipe(gulp.dest('../'));
});

// Compile and minfiy JS into a single file
gulp.task('uglifyJS', function() {
  gulp.src("js/*.js")
    .pipe(concat("backbone.js"))
    .pipe(uglifyJS())
    .pipe(gulp.dest('../'));
});


// Minify PNG Files
gulp.task('pngMin', function(){
    return gulp.src('images/*')
        .pipe(imageMin({
            progressive: true,
            svgoPlugins: [{removeViewBox: false}],
            use: [pngQuant()]
        }))
        .pipe(gulp.dest('images'));
});


// Gulp watch and automate all the above tasks
gulp.task('watch', function(){
    liveReload.listen();

    gulp.watch('scss/*.scss', ['sass']);
    gulp.watch('css/*.css', ['uglifyCSS']);
    gulp.watch('js/*.js', ['uglifyJS']);
    gulp.watch('images/*', ['pngMin']);

    gulp.watch(['../*.css', '../*.js', '../*.php'], function (files){
        liveReload.changed(files)
    });
});


gulp.task('default', ['watch']);
