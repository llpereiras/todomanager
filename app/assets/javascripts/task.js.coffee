
$(document).ready ->
  client = new Faye.Client('/faye')
  client.subscribe '/chat', (payload)->
    time = moment(payload.created_at).format('D/M/YYYY H:mm:ss')
    # You probably want to think seriously about XSS here:
    $('.count-message').html("#{payload.message}")
    window.client = client

# in case anyone wants to play with the inspector.
# // var client;
# //
# // client = new Faye.Client('/faye');
# //
# // client.subscribe('/news', function(payload) {
# //   var time;
# //   time = moment(payload.created_at).format('D/M/YYYY H:mm:ss');
# //   console.log(payload);
# //   return $('#news').append("<li>" + time + " : " + payload.message + "</li>");
# // });
# //
# // $(document).ready(function() {
# //   var input;
# //   return input = $('#message');
# // });
# //
# // window.client = client;
