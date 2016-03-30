class MessagesController < WebsocketRails::BaseController
  def user_connected
    puts 'user connected'
    WebsocketRails['meu_canal'].trigger(:new_message, {:tasks_count => List.count + 10})
  end

end
