class VolunteerMailer < ApplicationMailer

  def subscription_notification(volunteer)
    @volunteer = volunteer

    if addresses_have_been_set
      mail(from: ENV['SMTP_USER'], to: ENV['VUE_EMAIL_TO'], subject: 'Visite uma Escola: um novo voluntário foi cadastrado!')
    end
  end
end
