class SubmissionsController < ApplicationController

  # Need to get the course id

  # GET /api/v1/courses/:course_id/assignments

  # GET /api/v1/courses/:course_id/assignments/:assignment_id/submissions

  def get_all_submissions
    assignment_ids = []
    course_id = params[:course_id]
    submission_base_url = "http://localhost:3100"
    submission_api_key = "nZVG289Afvh1E5CgDkQBRnHejML7kf92ZAvSRnl4NvJkCzA29QYqi8mMhruuZypu"
    config_data = { base_url:  submission_base_url, api_key: submission_api_key}
    assignments_list_json = Canvas::ApiRequest.new(config_data).request.get("/api/v1/courses/#{course_id}/assignments").body
    # parse the submissions_list
    (assignments_list_json).each do |assignment_data|
      assignment_ids << assignment_data["id"]
    end
    # puts assignment_ids

    assignment_ids.each do |id|
      submission_json = Canvas::ApiRequest.new(config_data).request.get("/api/v1/courses/#{course_id}/assignments/#{id}/submissions").body
      submission_json.each do |submission_data|
        puts submission_data["attachments"].first["url"]
      end
      puts "----------------------------------------------------"
    end
    head :ok
  end
end
