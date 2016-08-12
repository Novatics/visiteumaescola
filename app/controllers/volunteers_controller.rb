class VolunteersController < ApplicationController
  def new
    volunteer = Volunteer.create! name: params[:name],
                                  email: params[:email],
                                  cellphone: params[:cellphone],
                                  phone: params[:phone],
                                  state: params[:state],
                                  city: params[:city],
                                  neighbourhood: params[:neighbourhood],
                                  address: params[:address],
                                  number: params[:number],
                                  zipcode: params[:zipcode],
                                  skill_sport: params[:skill_sport],
                                  skill_culture: params[:skill_culture],
                                  skill_monitoring: params[:skill_monitoring],
                                  skill_repairs: params[:skill_repairs],
                                  skill_courses: params[:skill_courses],
                                  skill_health: params[:skill_health],
                                  skill_psycho: params[:skill_psycho],
                                  skill_donations: params[:skill_donations],
                                  skill_others: params[:skill_others],
                                  skill_detail: params[:skill_detail],
                                  preference_kid: params[:preference_kid],
                                  preference_teenager: params[:preference_teenager],
                                  preference_adult: params[:preference_adult],
                                  preference_elderly: params[:preference_elderly],
                                  preference_deaf: params[:preference_deaf],
                                  preference_blind: params[:preference_blind],
                                  preference_disable: params[:preference_disable],
                                  preference_physical_disable: params[:preference_physical_disable],
                                  preference_teacher: params[:preference_teacher],
                                  preference_employee: params[:preference_employee],
                                  preference_family: params[:preference_family],
                                  preference_baby: params[:preference_baby],
                                  points: params[:points]

    if params[:morning]
      params[:morning].each_with_index do |element,index|
        VolunteerAvailability.create!(day: element, shift: 'morning', volunteer: volunteer.id)
      end
    end

    if params[:afternoon]
      params[:afternoon].each_with_index do |element,index|
        VolunteerAvailability.create!(day: element, shift: 'afternoon', volunteer: volunteer.id)
      end
    end

    if params[:night]
      params[:night].each_with_index do |element,index|
        VolunteerAvailability.create!(day: element, shift: 'night', volunteer: volunteer.id)
      end
    end

    if(volunteer == nil)
      render json: { status: 'error' }
    else
      VolunteerMailer.subscription_notification(volunteer).deliver_now

      render json: { status: 'success' }
    end
  end
end
