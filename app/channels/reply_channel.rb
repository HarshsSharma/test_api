class ReplyChannel < ApplicationCable::Channel
  def subscribed
    stream_from "reply_#{params[:room]}_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
