function autoType(elementClass, typingSpeed){
  var thhis = $(elementClass);
  thhis.css({
    "position": "relative",
    "display": "inline-block"
  });
  thhis.prepend('<div class="cursor" style="right: initial; left:0;"></div>');
  thhis = thhis.find(".text-js");
  var text = thhis.text().trim().split('');
  var amntOfChars = text.length;
  var newString = "";
  thhis.text("|");
  setTimeout(function(){
    thhis.css("opacity",1);
    thhis.prev().removeAttr("style");
    thhis.text("");
    for(var i = 0; i < amntOfChars; i++){
      (function(i,char){
        setTimeout(function() {
          newString += char;
          thhis.text(newString);
        },i*typingSpeed);
      })(i+1,text[i]);
    }
  },1500);
}

$(document).ready(function(){
  // Now to start autoTyping just call the autoType function with the
  // class of outer div
  // The second paramter is the speed between each letter is typed.
  autoType(".type-js",200);
});


var theater = theaterJS()

theater
  .on('type:start, erase:start', function () {
    theater.getCurrentActor().$element.classList.add('actor__content--typing')
  })
  .on('type:end, erase:end', function () {
    theater.getCurrentActor().$element.classList.remove('actor__content--typing')
  })
  .on('type:start, erase:start', function () {
    if (theater.getCurrentActor().name === 'vader') {
      document.body.classList.add('dark')
    } else {
      document.body.classList.remove('dark')
    }
  })

theater
  .addActor('vader', { speed: 0.8, accuracy: 0.6 })
  // .addActor('luke')
  .addScene('vader:경영과학', 600)
  .addScene('vader:자료구조', 400)
  .addScene('vader:알고리즘', 400)
  .addScene('vader:빅데이터', 600)
  // .addScene('luke:That\'s not true!', 600)
  // .addScene('luke:That\'s impossible!', 400)
  // .addScene('vader:Search your feelings.', 1600)
  // .addScene('vader:You know it to be true.', 1000)
  // .addScene('luke:Noooooooo! ', 600, 'No!', 400)
  // .addScene('vader:Luke.', 600)
  // .addScene('vader:You can destroy the Emperor.', 1600)
  // .addScene('vader:He has foreseen this. ', 800)
  // .addScene('vader:It is your destiny.', 1600)
  // .addScene('vader:Join me.', 800)
  // .addScene('vader:Together we can rule the galaxy.', 800)
  // .addScene('vader:As father and son.', 1600)
  // .addScene('vader:Come with me. ', 800)
  // .addScene('vader:It is the only way.', 2000)
  .addScene(theater.replay.bind(theater))
