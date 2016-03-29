class MessagesController < WebsocketRails::BaseController
  # def initialize_session
  #   # perform application setup here
  #   controller_store[:message_count] = 0
  # end

  def user_connected
    puts 'user connected'
    broadcast_message :client_connected, {:message => "Hello"}
  end


  def incoming_message
    broadcast_message :new_message, {:user => current_user.screen_name, :text => message[:text]}
  end

end
