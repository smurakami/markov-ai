var MarkovChain = require('markov-chain-kuromoji');
MarkovChain.dicPath = "node_modules/kuromoji/dict";
window.MarkovChain = MarkovChain;

// (function(){
//     var text = "マルコフ連鎖（マルコフれんさ、英: Markov chain）とは、確率過程の一種であるマルコフ過程のうち、とりうる状態が離散的（有限または可算）なもの（離散状態マルコフ過程）をいう。また特に、時間が離散的なもの（時刻は添え字で表される）を指すことが多い"
//     var MarkovChain = require('markov-chain-kuromoji');
//     var markov = new MarkovChain(text);

//     markov.dicPath = "node_modules/kuromoji/dict"
//     markov.start(5, function(output) {
//       console.log(output);
//     });
// })();



