$(document).ready ->
  current_day = moment().day()
  setInterval ->
    now = moment()
    time = now.format('h:mm')
    $("#clock").text(time)

    if now.day() != current_day
      current_day = now.day()
      console.log("updating date")
      day = now.format('dddd')
      date = now.format('MMMM D')
      $("#day").text(day)
      $("#date").text(date)
  , 60000
