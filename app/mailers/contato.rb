class Contato < ActionMailer::Base
  default from: "ulisses@parseint.com.br"

  def send_mail(message)
  	body = "Nome: #{message.name}\r\nE-mail: #{message.email}\r\nMensagem: #{message.content}"
    mail(to: "torquatro@gmail.com", subject: "Mensagem - #{message.name}", :body => body)
  end

end
