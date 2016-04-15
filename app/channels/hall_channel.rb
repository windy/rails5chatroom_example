# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class HallChannel < ApplicationCable::Channel
  def subscribed
    stream_from "hall_channel"
  end

  def talk(what)
    ActionCable.server.broadcast 'hall_channel', what
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
