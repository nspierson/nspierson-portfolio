class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.message.subject
  #
  def message_received(name, email, subject, content)
    @name = name
    @email = email
    @subject = subject
    @content = content

    mail to: "contact@nspierson.com"
  end
end
