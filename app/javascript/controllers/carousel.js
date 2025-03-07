document.addEventListener("DOMContentLoaded", function () {
  const wrapper = document.querySelector(".cards-wrapper");
  const nextBtn = document.querySelector(".next-btn");
  const prevBtn = document.querySelector(".prev-btn");

  let scrollAmount = 0;
  const cardWidth = document.querySelector(".card").offsetWidth + 20; // Considerando espaçamento

  nextBtn.addEventListener("click", function () {
    scrollAmount += cardWidth;
    wrapper.style.transform = `translateX(-${scrollAmount}px)`;
  });

  prevBtn.addEventListener("click", function () {
    scrollAmount -= cardWidth;
    wrapper.style.transform = `translateX(-${scrollAmount}px)`;
  });
});
