class VolunteersController < ApplicationController
  def new
    volunteer = Volunteer.create! name: params[:name], email: params[:email], phone: params[:phone], skills: params[:skills]

    if(volunteer == nil)
      render json: { status: 'error' }
    else
      render json: { status: 'success' }
    end
  end
end
