class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@coastlandmobile.com"
  default :to => "alex.austman@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Lionheart contact - from #{message.name}")
  end

end