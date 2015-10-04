class IndexController < ApplicationController
  def home
  end

  def messages
  	@messages = Message.all.order(:created_at)
  end
end
