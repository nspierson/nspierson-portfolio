class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = 'Merci, Votre message à bien été envoyé.'
      name = @message.name
      email = @message.email
      subject = @message.subject
      content = @message.content
      ContactMailer.message_received(name, email, subject, content).deliver_now
    else
      render 'new'
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end
