class ContatoController < ApplicationController

	def index
		@message = Message.new
		render 'index'
	end

	def send_mail
		puts " >>>> 01"
		@message = Message.new(params[:message])
		@message.vindo_de = request.host
	 
		if @message.valid?
      		Contato.send_mail( @message ).deliver
      		flash[:notice] = "Sua mensagem foi enviada. Obrigado por entrar em contato."
      		#redirect_to :action => 'index'
      		redirect_to "/contato"
  		else
  			puts " >>>> ERRORS: #{ @message.errors.inspect }"
  			redirect_to "/contato"
  			flash[:error] = "Falha ao enviar mensagem."
  			#render :action => 'index'
  		end
  	end
  	
end
