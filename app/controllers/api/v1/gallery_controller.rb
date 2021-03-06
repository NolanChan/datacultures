class Api::V1::GalleryController < ApplicationController

  # GET /api/v1/gallery/index.json
  def index
    bodies = Activity.where({reason: 'Submission'}).map{|a| a.body}
    json = bodies.map{|s| JSON.parse(s)}.reject{|j| j.empty?}.flatten
    json << Student.where({canvas_user_id: session[:canvas_user_id].to_i}).first
    render json: {'files' => json}, layout: false
  end

end
