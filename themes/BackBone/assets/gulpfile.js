// node.js Packages / Dependencies
const gulp = require('gulp');
const sass = require('gulp-sass');
const uglify = require('gulp-uglify');
const concat = require('gulp-concat');
const babel = require('gulp-babel');
const cleanCSS = require('gulp-clean-css');
const imagemin = require('gulp-imagemin');
const browserSync = require('browser-sync').create();
const autoprefixer = require('gulp-autoprefixer');

// Paths
var path = {
  src: {
    css: "css/",
    php: "../**/*.php",
    js: "js/*.js",
    scss: "scss/**/*.scss",
    imgs: "../../../uploads/**/*.+(png|jpg|gif|svg)"
  },
  dist: {
    root: "../",
    imgs: "../../../uploads/"
  },
  proxy: 'http://backbone.test'
};

// Compile SCSS
gulp.task("sass", function() {
  return gulp
    .src(path.src.scss)
    .pipe(sass({ outputStyle: "expanded" }).on("error", sass.logError))
    .pipe(autoprefixer())
    .pipe(gulp.dest(path.src.css))
    .pipe(browserSync.stream());
});

// Minify + Combine CSS
gulp.task("css", function() {
  return gulp
    .src(path.src.css + "*.css")
    .pipe(cleanCSS({ compatibility: "ie8" }))
    .pipe(gulp.dest(path.dist.root));
});

// Minify + Combine JS
gulp.task("js", function() {
  return gulp
    .src(path.src.js)
		.pipe(
			babel({
				presets: ['@babel/preset-env'],
			}),
		)
		.pipe(uglify())
		.pipe(concat('app.js'))
		.pipe(gulp.dest(path.dist.root))
		.pipe(browserSync.stream());
});

// Compress (JPEG, PNG, GIF, SVG, JPG)
gulp.task('img', () => {
	return gulp
		.src(path.src.imgs)
		.pipe(
			imagemin([
				imagemin.gifsicle({
					interlaced: true
				}),
				imagemin.mozjpeg({
					quality: 75,
					progressive: true
				}),
				imagemin.optipng({
					optimizationLevel: 5
				}),
				imagemin.svgo({
					plugins: [{
						removeViewBox: true
					}, {
						cleanupIDs: false
					}],
				}),
			]),
		)
		.pipe(gulp.dest(path.dist.imgs));
});

// Prepare all assets for production
gulp.task("build", gulp.series("sass", "css", "js", "img"));

// Watch (SASS, CSS, JS, and HTML) reload browser on change
gulp.task("watch", function() {
  // browserSync.init({
  //   proxy: path.proxy,
  //   notify: true
  // });

  gulp.watch(path.src.scss, gulp.series("sass", "css"));
  gulp.watch(path.src.js, gulp.series("js"));
  gulp.watch(path.src.php).on("change", browserSync.reload);
});
