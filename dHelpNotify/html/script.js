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
}

function hideNotification() {
    let notify = document.getElementById('notify');
    let container = document.getElementById('maincontainer');
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
        hideNotification()
    }

});