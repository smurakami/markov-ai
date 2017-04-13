// Generated by CoffeeScript 1.12.2
(function() {
  var geturl;

  geturl = function(url, callback) {
    var encoded;
    encoded = encodeURIComponent(url);
    return $.ajax({
      url: window.location.origin + '/geturl',
      data: {
        url: encoded
      },
      success: function(response) {
        return callback(response);
      }
    });
  };

  $(function() {
    var markov;
    markov = new MarkovChain("");
    window.markov = markov;
    return markov.setup(function() {});
  });

}).call(this);
