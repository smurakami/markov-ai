geturl = (url, callback) ->
  encoded = encodeURIComponent url

  $.ajax
    url: window.location.origin + '/geturl'
    data:
      url: encoded
    success: (response) ->
      callback(response)

$ ->

  # console.log 'hoge'
  # geturl 'http://www.aozora.gr.jp/cards/000148/files/789_14547.html', (res) ->
  #   console.log 'hoge'
  #   console.log(res)
  # return

  markov = new MarkovChain("")

  markov.setup ->
    generate = ->
      text = markov.generate(5)
      if text != ""
        $('#output ul').prepend $("<li>#{text}</li>")

    setInterval(generate, 1000)

  $('form#url_form').on 'submit', (e) ->
    e.preventDefault()
    window.x = $(this)
    url = $(this).serializeArray()[0].value
    $('#input ul').prepend $("<li>#{url}</li>")

    console.log 'fuhe'

    geturl url, (res) ->
      text = $(res).text()
      jtext = text.match(/[^\x00-\x7E]+/g).join("")
      console.log jtext
      markov.addText jtext

      # for elem in $(res).find('p, a, h1, h2, h3, li')
      #   text = $(elem).text()
      #   console.log text
        # markov.addText text
    $('form#url_form input').val null


