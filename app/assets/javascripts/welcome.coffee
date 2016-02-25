$(document).ready ->
  setInterval ->
    now = moment()
    time = now.format('h:mm')
    $("#clock").text(time)
    console.log(time)

    if now.hour() == 0
      console.log("updating date")
      day = now.format('dddd')
      date = now.format('MMMM D')
      $("#day").text(day)
      $("#date").text(date)
  , 60000
