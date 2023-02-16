let mix = require("laravel-mix");
let tailwindcss = require("tailwindcss");
require("laravel-mix-purgecss");
require("mix-tailwindcss");

// Bundle .JS files
mix
	.babel(["./src/js/app.js"], "./app.js")

	// Compile sass files
	.sass("./src/sass/app.scss", "./style.css")
	.options({
		postCss: [require("autoprefixer"), tailwindcss("./tailwind.config.js")],
	})

	// Auto Reload
	.browserSync({
		proxy: "http://localhost:8888/",
		files: [
			"./**/*.php",
			"./**/*.html",
			"./**/*.json",
			"./src/js/**/*.js",
			"src/sass/**/*.scss",
		],
	});

// npx run mix
