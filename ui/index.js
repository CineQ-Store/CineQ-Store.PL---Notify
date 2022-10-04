//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\
//\\--▒█▀▀█ ▀█▀ ▒█▄░▒█ ▒█▀▀▀ ▒█▀▀█ ░░ ▒█▀▀▄ ▒█▀▀▀ ▒█░░▒█ ░ ▒█▀▀▀ ▒█░▒█--//\\
//\\--▒█░░░ ▒█░ ▒█▒█▒█ ▒█▀▀▀ ▒█░▒█ ▀▀ ▒█░▒█ ▒█▀▀▀ ░▒█▒█░ ▄ ▒█▀▀▀ ▒█░▒█--//\\
//\\--▒█▄▄█ ▄█▄ ▒█░░▀█ ▒█▄▄▄ ░▀▀█▄ ░░ ▒█▄▄▀ ▒█▄▄▄ ░░▀▄▀░ █ ▒█▄▄▄ ░▀▄▄▀--//\\
//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\
/////Tu zmieniacie kolor ikonki!W razie jaki kolwiek problemów pisz PV! [CINEQ#6666]//\\

$(function () {
    var ikony = {
        "system" : "fas fa-info-circle",
        "info" : "fas fa-question-circle",
        "success" : "fas fa-check-circle",
        "error" : "fas fa-times-circle",
        "warning" : "fas fa-exclamation-triangle",
        "sms" : "fas fa-comment"
    };

    var kolory = {
        "system" : "#9d00ff",
        "info" : "#9d00ff",
        "success" : "#9d00ff",
        "error" : "#9d00ff,
        "warning" : "#9d00ff",
        "sms" : "#9d00ff"
    };

    var sound = new Audio('notification.wav');
    sound.volume = 0.2;

    window.addEventListener('message', function(event) {
        if (event.data.action == 'notification') {
            var number = Math.floor((Math.random() * 1000) + 1);
            $('.notify-wrapper').append(`
            <div class="notify-div wrapper-${number}" style="border-left: 2px solid ${kolory[event.data.type]}; border-top: 2px solid ${kolory[event.data.type]}; border-right: 2px solid ${kolory[event.data.type]}; -webkit-box-shadow: 0px 0px 10px ${kolory[event.data.type]}; 
            box-shadow: 0px 0px 10px ${kolory[event.data.type]}; display:none">
                <div class="align-items-baseline notify-title"><i class="${ikony[event.data.type]} fa-ms notify-icon" style="color: ${kolory[event.data.type]}"></i>
                    <h5 class="text-uppercase notify-title-text" style="color: ${kolory[event.data.type]}">${event.data.title}</h5>
                </div>
            <p class="text-break notify-main-text">${event.data.message}</p>
            <div id="progress"></div>
            <div class="img"></div>
            </div>`)

            $("#progress").stop().css({"width": 0, "background-color": "gold"}).animate({
                width: '92%'
            }, {
                duration: parseInt(event.data.time),
                complete: function() {
                  $("#progress").css("width", 0);
                }
            });

            $(`.wrapper-${number}`).fadeIn("slow");
            sound.play();
            setTimeout(function () {
                $(`.wrapper-${number}`).fadeOut( "slow", function () {
                    $(`.wrapper-${number}`).remove()
                })
            }, event.data.time)
            var ui = document.querySelector('.notify-wrapper');
            if (event.data.position === 'left') {
                ui.style.right = '82.5%';
            }
            if (event.data.position === 'right') {
                ui.style.right = '1%';
            }
        }
    })
})