class @App
  constructor: ->
    @startTime()

  startTime: ->
    today = new Date()
    h = today.getHours()
    m = today.getMinutes()
    s = today.getSeconds()
    m = @checkTime(m)
    s = @checkTime(s)
    document.getElementById("clock").innerHTML = h + ":" + m + ":" + s
    pill = "???"
    if s >= 0 and s <= 5
      pill = "jejum"
      $("#pill").addClass("jejum").removeClass("manha").removeClass("almoco").removeClass "noite"
      @play()
    else if s >= 15 and s <= 20
      pill = "9 da manhã"
      $("#pill").removeClass("jejum").addClass("manha").removeClass("almoco").removeClass "noite"
      @play()
    else if s >= 30 and s <= 35
      pill = "almoço"
      $("#pill").removeClass("jejum").removeClass("manha").addClass("almoco").removeClass "noite"
      @play()
    else if s >= 45 and s <= 50
      pill = "9 da noite"
      $("#pill").removeClass("jejum").removeClass("manha").removeClass("almoco").addClass "noite"
      @play()
    else
      pill = ""
      $("#pill").removeClass("jejum").removeClass("manha").removeClass("almoco").removeClass "noite"
      stop()
    document.getElementById("pill").innerHTML = pill
    t = setTimeout(=>
      @startTime()
      return
    , 500)
    return

  checkTime: (i) ->
    i = "0" + i  if i < 10 # add zero in front of numbers < 10
    i

  play: ->

    ###*
    For this to work on chrome for android, first this flag must be disabled:
    chrome://flags/#disable-gesture-requirement-for-media-playback
    ###
    # $('#alarm-mp3')[0].play()

  stop: ->
    $("#alarm-mp3")[0].pause()
    return