// script.js
const apiKey = 'eec3a4f6b35f41c2a985d468764809fd';
const apiUrl = `https://newsapi.org/v2/top-headlines?country=us&apiKey=${apiKey}`;

fetch(apiUrl)
    .then(response => response.json())
    .then(data => {
        const newsDiv = document.querySelector('.news');
        const articles = data.articles;

        articles.forEach(article => {
            const { title, description, url } = article;
            const newsItem = document.createElement('div');
            newsItem.classList.add('news-item');
            newsItem.innerHTML = `
                <h3><a href="${url}" target="_blank">${title}</a></h3>
                <p>${description}</p>
            `;
            newsDiv.appendChild(newsItem);
        });
    })
    .catch(error => console.error('Error fetching data:', error));
