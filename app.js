// init masonry layout
var initMasonry = function initMasonry() {
  var grids = document.querySelectorAll(".wp-block-post-template");
  grids.forEach(function (grid) {
    new Masonry(grid, {
      itemSelector: ".wp-block-post",
      columnWidth: ".wp-block-post",
      gutter: 20
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
