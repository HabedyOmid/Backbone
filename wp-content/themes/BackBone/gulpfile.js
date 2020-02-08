// node.js Packages / Dependencies
const gulp = require("gulp");
const sass = require("gulp-sass");
const uglify = require("gulp-uglify");
const concat = require("gulp-concat");
const cleanCSS = require("gulp-clean-css");
const imageMin = require("gulp-imagemin");
const pngQuint = require("imagemin-pngquant");
const browserSync = require("browser-sync").create();
const autoprefixer = require("gulp-autoprefixer");
const jpgRecompress = require("imagemin-jpeg-recompress");

// Paths
var paths = {
  src: {
    css: "css/",
    php: "../**/*.php",
    js: "js/**/*.js",
    scss: "scss/**/*.scss",
    imgs: "../../../uploads/**/*.+(png|jpg|gif|svg)"
  },
  dist: {
    root: "../",
    imgs: "../../../uploads/"
  }
};

// Compile SCSS
gulp.task("sass", function() {
  return gulp
    .src(paths.src.scss)
    .pipe(sass({ outputStyle: "expanded" }).on("error", sass.logError))
    .pipe(autoprefixer())
    .pipe(gulp.dest(paths.src.css))
    .pipe(browserSync.stream());
});

// Minify + Combine CSS
gulp.task("css", function() {
  return gulp
    .src(paths.src.css + "*.css")
    .pipe(cleanCSS({ compatibility: "ie8" }))
    .pipe(gulp.dest(paths.dist.root))
    .pipe(browserSync.stream());
});

// Minify + Combine JS
gulp.task("js", function() {
  return gulp
    .src(paths.src.js)
    .pipe(uglify())
    .pipe(concat("app.js"))
    .pipe(gulp.dest(paths.dist.root))
    .pipe(browserSync.stream());
});

// Compress (JPEG, PNG, GIF, SVG, JPG)
gulp.task("img", function() {
  return gulp
    .src(paths.src.imgs)
    .pipe(
      imageMin([
        imageMin.gifsicle(),
        imageMin.jpegtran(),
        imageMin.optipng(),
        imageMin.svgo(),
        pngQuint(),
        jpgRecompress()
      ])
    )
    .pipe(gulp.dest(paths.dist.imgs));
});

// Prepare all assets for production
gulp.task("build", gulp.series("sass", "css", "js", "img"));

// Watch (SASS, CSS, JS, and HTML) reload browser on change
gulp.task("watch", function() {
  browserSync.init({
    proxy: "https://wordpress.test",
    notify: true
  });

  gulp.watch(paths.src.scss, gulp.series("sass", "css"));
  gulp.watch(paths.src.js, gulp.series("js"));
  gulp.watch(paths.src.php).on("change", browserSync.reload);
});
