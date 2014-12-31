class WhoaPlayer
  constructor: ->
    @audio = new Audio '/whoa.mp3'

    @audio.addEventListener 'timeupdate', =>
      @audio.pause() if @audio.currentTime >= @stop

  whoa: (@start, @stop) ->
    console.log @start, @stop
    if @audio.paused
      @audio.currentTime = start
      @audio.play()
    else
      @audio.pause()


@whoa = new WhoaPlayer

document.getElementById('playwhoa').addEventListener 'click', (e) =>
  e.stopPropagation()
  @whoa.whoa parseFloat(e.target.dataset.start), parseFloat(e.target.dataset.stop)
