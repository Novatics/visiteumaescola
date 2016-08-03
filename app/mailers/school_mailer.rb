class SchoolMailer < ApplicationMailer

  def subscription_notification(school)
    @school = school

    if addresses_have_been_set
      mail(from: ENV['SMTP_USER'], to: ENV['VUE_EMAIL_TO'], subject: 'Visite uma Escola: uma nova escola foi cadastrada!')
    end
  end
end
