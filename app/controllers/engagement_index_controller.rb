class EngagementIndexController < ApplicationController
  @@data = File.read("public/dummy/json/students.json")

  def index
    render :json => @@data
  end

end
