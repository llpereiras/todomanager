WebsocketRails::EventMap.describe do
  subscribe :client_connected, :to => MessagesController, :with_method => :user_connected
  subscribe :new_message, :to => MessagesController, :with_method => :user_connected
end
