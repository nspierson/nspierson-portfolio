class PagesController < ApplicationController
  def home
    @message = Message.new
  end
end
