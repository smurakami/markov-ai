geturl = (url, callback) ->
  encoded = encodeURIComponent url

  $.ajax
    url: window.location.origin + '/geturl'
    data:
      url: encoded
    success: (response) ->
      callback(response)

$ ->
  markov = new MarkovChain("")
  window.markov = markov

  markov.setup ->
    console.log 'no error'
    geturl "http://qiita.com/hogehoge-banana/items/2a3c15b8f68de951bfe3", (res) ->
      window.res = res
      for elem in $(res).find('p, a, h1, h2, h3, li')
        text = $(elem).text()
        console.log text
        markov.addText text
        
    generate = ->
      console.log markov.generate(5)
      # setTimeout(generate, 500)

    setInterval(generate, 500)

