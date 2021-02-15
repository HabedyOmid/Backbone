(function () {

  // Count Up
  function countup(el, target) {
      let data = { count: 0 };
      anime({
        targets: data,
        count: [0, target],
        duration: 2000,
        round: 1,
        delay: 200,
        easing: "easeOutCubic",
        update() {
          el.innerText = data.count.toLocaleString();
        },
      });
    }
    function makeCountup(el) {
      const text = el.textContent;
      const target = parseInt(text, 10);
      const io = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
          if (entry.intersectionRatio > 0) {
            countup(el, target);
            io.unobserve(entry.target);
          }
        });
      });
      io.observe(el);
    }

    const els = document.querySelectorAll("[data-countup]");
    if(els != null) {
      els.forEach(makeCountup);
    }


    // Single Item Slider
    $(".single-item").slick({
        dots: true,
        arrows: false,
        infinite: true,
        autoplay: true,
        autoplaySpeed: 6000,
        speed: 800,
        slidesToShow: 1,
        adaptiveHeight: true,
    });


    // Initialize AOS Animations
    AOS.init();
})();