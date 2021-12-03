let input = document.querySelector(".search-bar input");
let typingTimer;
let doneTypingInterval = 2000;


input.addEventListener('keyup', () => {
    clearTimeout(typingTimer);
    typingTimer = setTimeout(doneTyping, doneTypingInterval);
});

input.addEventListener('keydown', () => {
    clearTimeout(typingTimer);
});

function httpGetAsync(theUrl, callback)
{
    let xmlHttp = new XMLHttpRequest();
    xmlHttp.responseType = 'json';

    xmlHttp.onreadystatechange = function() {
        if (xmlHttp.readyState === 4 && xmlHttp.status === 200)
            callback(xmlHttp.response);
    }
    xmlHttp.open("GET", theUrl, true); // true for asynchronous
    xmlHttp.send(null);
}

function insertSearch(number, name, id, id_l) {
    document.querySelectorAll(`#quicksearch > div.fast-search > div > div:nth-child(${number}) div`).forEach(el => el.remove());
    document.querySelector(`#quicksearch > div.fast-search > div > div:nth-child(${number})`).insertAdjacentHTML("beforeend", `<a href="/${id_l}/${id}/"><div class="search-card">
                    <img src="/static/images/pesquet.jpg">
                    <p class="name">${name}</p>
                </div></a>`)
}

function doneTyping () {
    httpGetAsync("/a/ajax/search/"+input.value+"/", j => {
        for (const i of JSON.parse(j))
            insertSearch(2, i.fields.name, i.pk, "a")
    });
    httpGetAsync("/p/ajax/search/"+input.value+"/", j => {
        for (const i of JSON.parse(j))
            insertSearch(1, i.fields.first_name + " " + i.fields.last_name, i.pk, "p")
    });
    httpGetAsync("/b/ajax/search/"+input.value+"/", j => {
        for (const i of JSON.parse(j))
            insertSearch(3, i.fields.name, i.pk, "b")
    });
}
