class SchoolProfilesController < ApplicationController

  # GET
  def new
    binding.pry
    @schoolprofile = SchoolProfile.new
  end

  # POST
  def create
    binding.pry
    @school_profile = SchoolProfile.new
  end

  # GET
  def edit
  end

  # PUT
  def update
  end

  # DELETE
  def destroy
  end
end
