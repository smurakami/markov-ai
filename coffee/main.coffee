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
  #   geturl "http://qiita.com/hogehoge-banana/items/2a3c15b8f68de951bfe3", (res) ->
  #     window.res = res
  #     for elem in $(res).find('p, a, h1, h2, h3, li')
  #       text = $(elem).text()
  #       console.log text
  #       markov.addText text
        
  #   generate = ->
  #     console.log markov.generate(5)
  #     # setTimeout(generate, 500)

  #   setInterval(generate, 500)


  # text = "かせて云う。「去年の大掃除の時だ。うちの亭主が石灰いしばいの袋を持って椽えんの下へ這はい込んだら御めえ大きないたちの野郎が面喰めんくらって飛び出したと思いねえ」「ふん」と感心して見せる。「いたちってけども何鼠の少し大きいぐれえのものだ。こん畜生ちきしょうって気で追っかけてとうとう泥溝どぶの中へ追い込んだと思いねえ」「うまくやったね」と喝采かっさいしてやる。「ところが御めえいざってえ段になると奴め最後さいごっ屁ぺをこきゃがった。臭くせえの臭くねえのってそれからってえものはいたちを見ると胸が悪くならあ」彼はここに至ってあたかも去年の臭気を今いまなお感ずるごとく前足を揚げて鼻の頭を二三遍なで廻わした。吾輩も少々気の毒な感じがする。ちっと景気を付けてやろうと思って「しかし鼠なら君に睨にらまれては百年目だろう。君はあまり鼠を捕とるのが名人で鼠ばかり食うものだからそんなに肥って色つやが善いのだろう」黒の御機嫌をとるためのこの質問は不思議にも反対の結果を呈出ていしゅつした。彼は喟然きぜんとして大息たいそくしていう。「考かんげえるとつまらねえ。いくら稼いで鼠をとったって――一てえ人間ほどふてえ奴は世の中にいねえぜ。人のとった鼠をみんな取り上げやがって交番へ持って行きゃあがる。交番じゃ誰が捕とったか分らねえからそのたんびに五銭ずつくれるじゃねえか。うちの亭主なんか己おれの御蔭でもう壱円五十銭くらい儲もうけていやがる癖に、碌ろくなものを食わせた事もありゃしねえ。おい人間てものあ体ていの善いい泥棒だぜ」さすが"
