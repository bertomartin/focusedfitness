class MessageMailer < ApplicationMailer

  default from: 'alansidransky@msn.com'

  def message_email(message)
    @message_name = message.name
    @message_email = message.email
    @message_text = message.message
    mail(to: 'alan.sidransky@yahoo.com', subject: 'FocusedFitnessNYC Contact')
  end
end
