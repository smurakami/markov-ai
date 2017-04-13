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

  markov.setup ->
    generate = ->
      text = markov.generate(5)
      if text != ""
        $('#output ul').prepend $("<li>#{text}</li>")

    setInterval(generate, 1000)

  $('form#url_form').on 'submit', (e) ->
    e.preventDefault()
    console.log $(this)
    window.x = $(this)
    url = $(this).serializeArray()[0].value
    console.log url
    $('#input ul').prepend $("<li>#{url}</li>")

    geturl url, (res) ->
      console.log res
      for elem in $(res).find('p, a, h1, h2, h3, li')
        text = $(elem).text()
        console.log text
        markov.addText text
    $('form#url_form input').val null


