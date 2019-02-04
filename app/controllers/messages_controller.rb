class MessagesController < ApplicationController

  def create
		@message = Message.new(message_params)
		respond_to do |format|
			if @message.save
				format.html	{ redirect_to :root }
				format.json { render :new, status: :created, location: @chat }
			else
				format.html { redirect_to root }	
				format.json { render json: @message.errors, status: :unprocessable_entity }
			end
		end
  end
  
	def admin
    
	end

  private
  	def message_params
  		puts params
  		params.require(:message).permit(:user_id, :chat_id, :text)
  	end
end
