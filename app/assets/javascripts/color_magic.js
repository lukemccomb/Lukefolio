// $(document).ready(function() {
//   var blue = {
//     x: 0,
//     y: 0,
//     angle: (5*Math.PI)/6
//   };
//   var red = {
//     x: 0,
//     y: 0,
//     angle: Math.PI/6
//   };
//   var yellow = {
//     x: 0,
//     y: 0,
//     angle: (3*Math.PI)/2
//   };
//   var hyp = 10;
//   var Dang = .03;
//   var textObject = $('#color-magic');
//   var interval;
//
//   function init() {
//     interval = setInterval(rotate, 10)
//   }
//
//   function angleCalc(color){
//     var xOut = Math.cos(color.angle)*hyp;
//     var yOut = Math.sin(color.angle)*hyp;
//     color.angle += Dang;
//     color.x = xOut;
//     color.y = yOut;
//   }
//
//   function rotate() {
//     angleCalc(blue);
//     angleCalc(red);
//     angleCalc(yellow);
//     textObject.css("text-shadow", blue.x.toString() + "px " + blue.y.toString() + "px 3px rgba(81, 169, 255, 0.8),"
//                                 + red.x.toString() + "px " + red.y.toString() + "px 3px rgba(255, 15, 174, 0.80),"
//                                 + yellow.x.toString() + "px " + yellow.y.toString() + "px 3px rgba(255, 251, 3, 0.80);");
//     console.log(textObject.css);
// //    textObject.css("text-shadow", );
// //    textObject.css("text-shadow", );
//
//   }
//
//   $(document).on("mouseover", "#color-magic", function() {
//     init()
//   });
//
//   $(document).on("mouseleave", "#color-magic", function() {
//     clearInterval(interval);
//     Dang = Dang * -1
//   });
//
// });
