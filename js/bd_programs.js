const urlParams = new URLSearchParams(window.location.search);
const target_program = urlParams.get('target_program');
const programCardSection = document.querySelector('.news_card_sectionn');
const programCardHeader = document.querySelector('.news_header');

// AJAX запрос
const xhr = new XMLHttpRequest();
xhr.open('GET', '../php/bd_programs.php', true);
xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
        const data = JSON.parse(xhr.responseText);

        const foundTarget = data.find(target => target.target == target_program);
        programCardHeader.textContent = foundTarget.Name_target;
        // Обработка данных и вставка в HTML-шаблон
        data.forEach(program => {
            if (program.target == target_program) {
                const programCardWrapper = document.createElement('div');
                programCardWrapper.classList.add('news_card_wrapper');

                const programCard = document.createElement('div');
                programCard.classList.add('news_card');

                const programImg = document.createElement('img');
                programImg.src = program.Img_Programs;
                programImg.alt = 'program image';
                programImg.classList.add('news_card_imgg');

                const programTextWrapper = document.createElement('div');
                programTextWrapper.classList.add('news_card_text_wrapperr');

                const programHeader = document.createElement('div');
                programHeader.classList.add('news_card_headerr');
                programHeader.textContent = program.Name_Programs;

                const programSubheader = document.createElement('div');
                programSubheader.classList.add('news_card_subheaderr');
                programSubheader.textContent = program.Description_Programs;

                programTextWrapper.appendChild(programHeader);
                programTextWrapper.appendChild(programSubheader);

                programCard.appendChild(programImg);
                programCard.appendChild(programTextWrapper);

                programCardWrapper.appendChild(programCard);

                programCardSection.appendChild(programCardWrapper);
            }
        });
    }
};
xhr.send();