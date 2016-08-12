class SchoolsController < ApplicationController
  def new
    school = School.create! name: params[:name],
                            email: params[:email],
                            phone: params[:phone],
                            abbreviation: params[:abbreviation],
                            state: params[:state],
                            city: params[:city],
                            neighbourhood: params[:neighbourhood],
                            address: params[:address],
                            number: params[:number],
                            zipcode: params[:zipcode],
                            profile_nursery: params[:profile_nursery],
                            profile_daycare: params[:profile_daycare],
                            profile_kindergarten: params[:profile_kindergarten],
                            profile_elementary: params[:profile_elementary],
                            profile_college: params[:profile_college],
                            profile_technician: params[:profile_technician],
                            profile_language: params[:profile_language],
                            profile_sport: params[:profile_sport],
                            profile_art: params[:profile_art],
                            profile_kid: params[:profile_kid],
                            profile_teenager: params[:profile_teenager],
                            profile_adult: params[:profile_adult],
                            profile_elderly: params[:profile_elderly],
                            profile_deaf: params[:profile_deaf],
                            profile_disable: params[:profile_disable],
                            profile_physical_disable: params[:profile_physical_disable],
                            profile_blind: params[:profile_blind],
                            profile_teacher: params[:profile_teacher],
                            profile_employee: params[:profile_employee],
                            profile_family: params[:profile_family],
                            profile_baby: params[:profile_baby],
                            contact_name: params[:contact_name],
                            contact_email: params[:contact_email],
                            contact_phone: params[:contact_phone],
                            contact_position: params[:contact_position],
                            contact_name_responsible: params[:contact_name_responsible],
                            contact_email_responsible: params[:contact_email_responsible],
                            contact_position_responsible: params[:contact_position_responsible],
                            contact_phone_responsible: params[:contact_phone_responsible],
                            need_sport: params[:need_sport],
                            need_culture: params[:need_culture],
                            need_monitoring: params[:need_monitoring],
                            need_courses: params[:need_courses],
                            need_repairs: params[:need_repairs],
                            need_health: params[:need_health],
                            need_psycho: params[:need_psycho],
                            need_donations: params[:need_donations],
                            need_others: params[:need_others],
                            need_detail: params[:need_detail]

    if params[:morning]
        params[:morning].each_with_index do |element,index|
          SchoolAvailability.create!(day: element, shift: 'morning', school: school.id)
        end
    end

    if params[:afternoon]
        params[:afternoon].each_with_index do |element,index|
          SchoolAvailability.create!(day: element, shift: 'afternoon', school: school.id)
        end
    end

    if params[:night]
        params[:night].each_with_index do |element,index|
          SchoolAvailability.create!(day: element, shift: 'night', school: school.id)
        end
    end

    if(school == nil)
      render json: { status: 'error' }
    else
      SchoolMailer.subscription_notification(school).deliver_now

      render json: { status: 'success' }
    end
  end
end
