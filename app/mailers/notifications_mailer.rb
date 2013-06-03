class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@lionheart-ts.com"
  default :to => "alex.austman@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Lionheart contact - from #{message.name}")
  end

end