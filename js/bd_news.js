const newsCardSection = document.querySelector('.news_card_section');

// AJAX запрос
const xhr = new XMLHttpRequest();
xhr.open('GET', '../php/bd_news.php', true);
xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
        const data = JSON.parse(xhr.responseText);

        // Обработка данных и вставка в HTML-шаблон
        data.forEach(news => {
            const newsCardWrapper = document.createElement('div');
            newsCardWrapper.classList.add('news_card_wrapper');

            const newsCard = document.createElement('div');
            newsCard.classList.add('news_card');

            const newsImg = document.createElement('img');
            newsImg.src = 'icons/news.png';
            newsImg.alt = 'arrow';
            newsImg.classList.add('news_card_img');

            const newsTextWrapper = document.createElement('div');
            newsTextWrapper.classList.add('news_card_text_wrapper');

            const newsHeader = document.createElement('div');
            newsHeader.classList.add('news_card_header');
            newsHeader.textContent = news.News_header;

            const newsSubheader = document.createElement('div');
            newsSubheader.classList.add('news_card_subheader');
            newsSubheader.textContent = news.News_mini_text;

            newsTextWrapper.appendChild(newsHeader);
            newsTextWrapper.appendChild(newsSubheader);

            newsCard.appendChild(newsImg);
            newsCard.appendChild(newsTextWrapper);

            newsCardWrapper.appendChild(newsCard);

            newsCardSection.appendChild(newsCardWrapper);
        });
    }
};
xhr.send();