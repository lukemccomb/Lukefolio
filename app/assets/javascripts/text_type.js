$(document).ready(function(){
  var dataText = [
    "Hey there. ",
    "My name is Luke. ",
    "I'm a software engineer at IBM. ",
    "I live in Denver, Colorado.",
    "Check out the most recent song I've liked on SoundCloud: "
  ];

  function typeWriter(text, textIterator, phraseIterator, fnCallback) {
    // check if text isn't finished yet
    if (textIterator < (text.length)) {
      // add next character to h1
     document.querySelector("#info-type-animation" + phraseIterator).innerHTML =
      text.substring(0, textIterator + 1) + '<span class="type-cursor" aria-hidden="true"></span>';

      // wait for a while and call this function again for next character
      setTimeout(function() {
        typeWriter(text, textIterator + 1, phraseIterator, fnCallback)
      }, 100);
    }
    // text finished, call callback if there is a callback function
    else if (typeof fnCallback == 'function') {

      if(phraseIterator < dataText.length - 1) {
        var thisSpan = document.querySelector(".type-cursor");
        thisSpan.parentNode.removeChild(thisSpan);
      } else {
        $('.soundcloud-embed').removeClass('hidden');
      }

      setTimeout(fnCallback, 700);
    }
  }
  // start a typewriter animation for a text in the dataText array
  function StartTextAnimation(i) {
     // check if dataText[i] exists
    if (dataText[i] && i < dataText[i].length) {
      // text exists! start typewriter animation
      typeWriter(dataText[i], 0, i, function(){
       // after callback (and whole text has been animated), start next text
       StartTextAnimation(i + 1);
      });
    }
  }
  // start the text animation
  StartTextAnimation(0);
});
