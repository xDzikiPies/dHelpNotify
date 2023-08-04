let audio = null; 

function showNotification(data) {
    let container = document.getElementById('maincontainer');
    container.innerHTML =
        `<div class="notify" id="notify">
            <div class="keybox">
                <p>${data.key}</p>
            </div>
            <div class="info">
                <div class="title">
                    <p>${data.title}</p>
                </div>
                <div class="description">
                    <p>${data.description}</p>
                </div>
            </div>
        </div>`;

    container.style.display = 'flex';

    audio = document.createElement('audio');
    audio.src = 'sound.mp3';
    audio.volume = 1;
    audio.autoplay = true;
    audio.play();

    document.getElementById('notify').appendChild(audio);
}

function hideNotification() {
    let notify = document.getElementById('notify');
    let container = document.getElementById('maincontainer');

    if (audio) {
        audio.pause();
        audio.currentTime = 0;
        audio = null;
    }

    notify.style.animation = 'slideOutFromLeft 0.5s';
    notify.addEventListener('animationend', function () {
        notify.parentNode.removeChild(notify);
    });
}

window.addEventListener('message', function (event) {
    let data = event.data;

    if (data.type === 'open') {
        showNotification(data.notifyData);
    } else if (data.type === 'close') {
        hideNotification();
    }
});
