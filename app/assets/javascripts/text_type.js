$(document).ready(function(){

  var dataText = [
    "Hey there.",
    "My name is Luke.",
    "I'm a software engineer at IBM.",
    "I live in Denver, Colorado."
  ];

  function typeWriter(text, textIterator, phraseIterator, fnCallback) {
    if (textIterator < (text.length)) {
      if(document.querySelector("#info-type-animation" + phraseIterator)) {
        document.querySelector("#info-type-animation" + phraseIterator).innerHTML =
        text.substring(0, textIterator + 1) + '<span class="type-cursor" aria-hidden="true"></span>';

        setTimeout(function() {
          typeWriter(text, textIterator + 1, phraseIterator, fnCallback)
        }, 100);
      }
    } else if (typeof fnCallback == 'function') {
      if(phraseIterator < dataText.length - 1) {
        var thisSpan = document.querySelector(".type-cursor");

        if(thisSpan) {
          thisSpan.parentNode.removeChild(thisSpan);
        }
      }

      setTimeout(fnCallback, 700);
    }
  }

  function StartTextAnimation(i) {
    if (dataText[i] && i < dataText[i].length) {
      typeWriter(dataText[i], 0, i, function(){
        StartTextAnimation(i + 1);
      });
    }
  }

  StartTextAnimation(0);
});
