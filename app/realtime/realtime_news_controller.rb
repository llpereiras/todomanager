class RealtimeNewsController < FayeRails::Controller
  channel '/news' do
    subscribe do
      abort("aquiiiiiiii")
      puts "Received on channel #{channel}: #{message.inspect}"
    end
  end
end
