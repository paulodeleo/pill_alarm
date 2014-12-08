class @App
  constructor: ->
    # fake fullscreen by hiding the address bar?
    window.scrollTo(0,1)
    # window.document.body.requestFullscreen()
    # window.document.documentElement.requestFullscreen()

    @bindEvents()

    @startTime()

  bindEvents: ->
    $('#clock').on 'click', (e) =>
      @stop()

  startTime: ->
    today = new Date()
    h = today.getHours()
    m = today.getMinutes()
    s = today.getSeconds()
    m = @checkTime(m)
    s = @checkTime(s)
    $("#clock").text(h + ":" + m + ":" + s)

    pillText = "???"
    # if s >= 0 and s <= 5
    # if h == 8 and m == 0
    if h == 22 and m == 27
      pillText = "jejum"
      $('.pill').hide()
      $("#jejum").show()
      @play('jejum')
    # else if s >= 10 and s <= 15
    else if h == 8 and m == 0
      pillText = "9 da manhã"
      $('.pill').hide()
      $("#manha").show()
      @play('manha')
    # else if s >= 20 and s <= 25
    else if h == 13 and m == 0
      pillText = "almoço"
      $('.pill').hide()
      $("#almoco").show()
      @play('almoco')
    # else if s >= 30 and s <= 35
    else if h == 16 and m == 0
      pillText = "4 da tarde"
      $('.pill').hide()
      $("#tarde").show()
      @play('tarde')
    # else if s >= 40 and s <= 45
    else if h == 21 and s == 0
    # else if h == 22 and m == 20
      pillText = "9 da noite"
      $('.pill').hide()
      $("#noite").show()
      @play('noite')
    else
      $('.pill').hide()
      $("#no-pill").show()
      pillText = "no pill"
      @stop()

    $(".pill .pill-text").text(pillText)

    t = setTimeout(=>
      @startTime()
      return
    , 500)
    return

  checkTime: (i) ->
    i = "0" + i  if i < 10 # add zero in front of numbers < 10
    i

  play: (file) ->

    ###*
    For this to work on chrome for android, first this flag must be disabled:
    chrome://flags/#disable-gesture-requirement-for-media-playback
    ###
    media = $(".#{file}-mp3")[0]
    if media.paused
      media.load()
      media.loop = true
      media.play()

  stop: ->
    # $(".media")[0].pause()
    $(".media").each (index) ->
      if !this.paused
        this.pause()
    return