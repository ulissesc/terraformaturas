class ContatoController < ApplicationController

	def index
		@message = Message.new
		render 'index'
	end

	def send_mail
		@message = Message.new(params[:message])
	
		if @message.valid?
      		Contato.send_mail( @message ).deliver
      		flash[:notice] = "Sua mensagem foi enviada! Obrigado por entrar em contato."
      		redirect_to :action => 'index'
  		else
  			render :action => 'index'
  		end
  	end
  	
end
