// bd_category_program.js

function loadPrograms(category_program, targetContainerId) {
    const adventagesCardSection = document.querySelector(`#${targetContainerId} .adventages_row_plan`);
    let flag = 0;
    const xhr_p = new XMLHttpRequest();
    xhr_p.open('GET', '../php/bd_category_program.php', true);
    xhr_p.onreadystatechange = function () {
        if (xhr_p.readyState === 4 && xhr_p.status === 200) {
            const data = JSON.parse(xhr_p.responseText);

            data.forEach(target => {
                if (target.Id_category_program == category_program && flag < 4) {
                    const adventagesCardLinck = document.createElement('a');
                    adventagesCardLinck.href = `program_personal.html?target_program=${target.Id_target}`;

                    const adventagesCard = document.createElement('div');
                    adventagesCard.classList.add('adventages_card_wrapper', 'adventages_plan');

                    const adventagesImg = document.createElement('img');
                    adventagesImg.src = 'icons/study_plan_icon.png';
                    adventagesImg.alt = 'arrow';
                    adventagesImg.classList.add('adventages_card_icon');

                    const adventagesCardHeader = document.createElement('div');
                    adventagesCardHeader.classList.add('adventages_card_header');
                    adventagesCardHeader.textContent = target.Name_target;

                    const adventagesCardSubheader = document.createElement('div');
                    adventagesCardSubheader.classList.add('adventages_card_subheader');
                    adventagesCardSubheader.textContent = target.text_target;

                    const adventagesCardLine = document.createElement('div');
                    adventagesCardLine.classList.add('adventages_card_line');

                    adventagesCard.appendChild(adventagesImg);
                    adventagesCardLinck.appendChild(adventagesCardHeader);
                    adventagesCard.appendChild(adventagesCardLinck);
                    adventagesCard.appendChild(adventagesCardSubheader);
                    adventagesCard.appendChild(adventagesCardLine);

                    adventagesCardSection.appendChild(adventagesCard);
                    flag++;
                }
            });
        }
    };
    xhr_p.send();
}


