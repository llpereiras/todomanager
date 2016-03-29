$(function() {

    var dispatcher = new WebSocketRails('localhost:3000/websocket');

    dispatcher.client_connected = function(data) {
      console.log('Connection has been established: ', data);
      console.log(data);
      // You can trigger new server events inside this callback if you wish.
    }

    dispatcher.bind('client_connected', function(data) {
      console.log(data.message); // would output 'this is a message'
    });


    var success = function(response) {
      console.log("Wow it worked: "+response.message);
    }

    var failure = function(response) {
      console.log("That just totally failed: "+response.message);
    }

    var object_to_send = { data: 'test' }

    dispatcher.trigger('some_event', object_to_send, success, failure);

    function addCommentToDom(comment) {
      console.log('just received new comment: ' + comment.title);
    }

    dispatcher.bind('client_connected', addCommentToDom);

    dispatcher.client_connected = function(data) {
      console.log('Connection has been established: ', data);
      console.log(data);
      // You can trigger new server events inside this callback if you wish.
    }

    dispatcher.trigger('client_connected', function(data) {
      console.log('connection is client_connected');
      console.log(data);
    });


    dispatcher.bind('client_connected', function(data) {
      console.log('connection is closed');
    });

});
