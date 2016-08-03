class ApplicationMailer < ActionMailer::Base
  layout 'mailer'

  def addresses_have_been_set
    ENV['SMTP_USER'] && ENV['VUE_EMAIL_TO']
  end

end
