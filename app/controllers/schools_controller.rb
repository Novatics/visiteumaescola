class SchoolsController < ApplicationController
  def new
    school = School.create! name: params[:name], email: params[:email], phone: params[:phone], needs: params[:needs]

    if(school == nil)
      render json: { status: 'error' }
    else
      render json: { status: 'success' }
    end
  end
end
