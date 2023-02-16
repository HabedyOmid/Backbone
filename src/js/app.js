// init masonry layout
const initMasonry = function initMasonry() {
	const grids = document.querySelectorAll(".wp-block-post-template");
	grids.forEach((grid) => {
		new Masonry(grid, {
			itemSelector: ".wp-block-post",
			columnWidth: ".wp-block-post",
			gutter: 20,
		});
	});
};

(function () {
	initMasonry();
})();

window.addEventListener("resize", function () {
	initMasonry();
});

window.addEventListener("DOMContentLoaded", function () {
	initMasonry();
});

window.addEventListener("DOMSubtreeModified", function () {
	initMasonry();
});
