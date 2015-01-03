class MessageMailer < ApplicationMailer

  default from: 'berto.martin@gmail.com'

  def message_email(message)
    @message_name = message.name
    @message_email = message.email
    @message_text = message.message
    mail(to: 'rmartin.martin@gmail.com', subject: 'FocusedFitnessNYC Contact')
  end
end
