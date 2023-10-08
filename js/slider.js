document.addEventListener("DOMContentLoaded", function () {
    // Получаем все необходимые элементы
    const bannerIconPrev = document.querySelector(".banner_icon");
    const bannerIconNext = document.querySelector(".banner_icon.second");
    const sliderPoints = document.querySelectorAll(".slider_points .circle");
    const banner = document.querySelector(".banner");

    let currentSlide = 0; // Текущий слайд

    // Функция для обновления активного слайда и точки
    function updateSlide(index) {
        sliderPoints.forEach(point => point.classList.remove("circle_active"));

        sliderPoints[index].classList.add("circle_active");

        // Добавляем анимацию перехода

        banner.style.background = `url(../img/Rectangle${index + 1}.png) center center/cover no-repeat`;
        banner.style.transition = "background 0.5s ease";
    }

    // Обработчик клика на кнопку "Назад"
    bannerIconPrev.addEventListener("click", function () {
        currentSlide--;
        if (currentSlide < 0) {
            currentSlide = sliderPoints.length - 1;
        }
        updateSlide(currentSlide);
    });

    // Обработчик клика на кнопку "Вперед"
    bannerIconNext.addEventListener("click", function () {
        currentSlide++;
        if (currentSlide >= sliderPoints.length) {
            currentSlide = 0;
        }
        updateSlide(currentSlide);
    });

    // Обработчики клика на точки слайдера
    sliderPoints.forEach(function (point, index) {
        point.addEventListener("click", function () {
            currentSlide = index;
            updateSlide(currentSlide);
        });
    });
});
