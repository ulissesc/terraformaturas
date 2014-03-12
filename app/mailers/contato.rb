class Contato < ActionMailer::Base
  default from: "ulisses@parseint.com.br"
  default to: "torquatro@gmail.com"

  def send_mail(message)
  	body = "Nome: #{message.name}\r\nE-mail: #{message.email}\r\nMensagem: #{message.content}"
    mail(subject: "Mensagem vindo de  - #{message.vindo_de}", :body => body)
  end

end
