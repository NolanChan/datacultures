class HelloWorldController < ApplicationController
  require 'ims/lti'
  skip_before_action :verify_authenticity_token, :set_x_frame_options_header
  before_action :disable_xframe_options

  def hi
    # Initialize TP object with OAuth creds and post parameters
    # provider = IMS::LTI::ToolProvider.new(@consumer_key, @consumer_secret)
    # Verify OAuth signature by passing the request object
  end

  private

  def disable_xframe_options
    response.headers.except! 'X-Frame-Options'
  end
end
