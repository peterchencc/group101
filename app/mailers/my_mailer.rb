class MyMailer < ActionMailer::Base
  default from: "peterchencc"

  def create_group_email(email,group)
    @message = "此為系統自動發送信件，請勿回覆"
    @group = group
    mail(:to => email, :subject => "系統通知信件 form group101")
  end
end
