class Contato < ActionMailer::Base
  default from: "parseint@parseint.com.br"
  default to: "terra.formaturas@hotmail.com"

  def send_mail(message)
  	body = "Nome: #{message.name}\r\nE-mail: #{message.email}\r\nMensagem: #{message.content}"
    mail(subject: "Mensagem vindo de  - #{message.vindo_de}", :body => body)
  end

end
