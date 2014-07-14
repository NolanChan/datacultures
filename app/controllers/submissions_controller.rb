class SubmissionsController < ApplicationController

  # Need to get the course id

  # GET /api/v1/courses/:course_id/assignments

  # GET /api/v1/courses/:course_id/assignments/:assignment_id/submissions

  def get_all_submissions
    course_id = params[:course_id]
    submission_base_url = "https://localhost:3100"
    submission_api_key = "19~y4fkKu6wAFh1YroBy9s3l0Ks4IlZtQW2kNl0XElFTHqruGEZ5INZKpYpUuwvqfBL"
    config_data = { base_url:  submission_base_url, api_key: submission_api_key}
    submissions_list_json = Canvas::ApiRequest.new(config_data).request.get("/api/v1/courses/#{course_id}/assignments")
    #parse the submissions_list
    submissions_list.each do |submission_id|
      submission_json = Canvas::ApiRequest.new(config_data).request.get("/api/v1/courses/#{course_id}/assignments/#{submission_id}")
    puts submissions_request
  end
end
