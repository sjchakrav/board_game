$(document).foundation();

var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var player;

function onYouTubeIframeAPIReady() {
    player = new YT.Player('player', {
        height: '315',
        width: '560',
        videoId: 'AbQsCZbdwkw',
        events: {
            'onStateChange': onPlayerStateChange
        }
    });
}


function onPlayerStateChange(event) {
    if (event.data == YT.PlayerState.PLAYING) {
    } else {
    }
}

function stopVideo() {
    player.stopVideo();
}

function playVideo() {
  player.playVideo();
}

function pauseVideo() {
  player.pauseVideo();
}


$(document).on('opened.fndtn.reveal', '[data-reveal]', function () {
    playVideo();
});

$(document).on('closed.fndtn.reveal', '[data-reveal]', function () {
  pauseVideo();
});