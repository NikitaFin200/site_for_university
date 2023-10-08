const teachersCardSection = document.querySelector('.teachers_card_section');

// AJAX запрос
const xhr = new XMLHttpRequest();
xhr.open('GET', '../php/bd_teachers.php', true);
xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
        const data = JSON.parse(xhr.responseText);

        // Обработка данных и вставка в HTML-шаблон
        data.forEach(teacher => {
            const teachersCardWrapper = document.createElement('div');
            teachersCardWrapper.classList.add('teachers_card_wrapper');

            const teachersCard = document.createElement('div');
            teachersCard.classList.add('teachers_card');

            const teachersImg = document.createElement('img');
            teachersImg.src = 'img/img_teachers/' + teacher.Img;
            teachersImg.alt = 'teacher image';
            teachersImg.classList.add('teachers_card_img');

            const teachersTextWrapper = document.createElement('div');
            teachersTextWrapper.classList.add('teachers_card_text_wrapper');

            const teachersHeader = document.createElement('div');
            teachersHeader.classList.add('teachers_card_header');
            teachersHeader.textContent = teacher.FIO;

            const teachersSubheader = document.createElement('div');
            teachersSubheader.classList.add('teachers_card_subheader');
            teachersSubheader.textContent = teacher.Object;

            teachersTextWrapper.appendChild(teachersHeader);
            teachersTextWrapper.appendChild(teachersSubheader);

            teachersCard.appendChild(teachersImg);
            teachersCard.appendChild(teachersTextWrapper);

            teachersCardWrapper.appendChild(teachersCard);

            teachersCardSection.appendChild(teachersCardWrapper);
        });
    }
};
xhr.send();
