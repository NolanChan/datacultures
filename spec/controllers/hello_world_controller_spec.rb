require 'rails_helper'

RSpec.describe HelloWorldController, :type => :controller do

  describe "GET 'hi'" do
    it "returns http success" do
      get 'hi'
      expect(response).to be_success
    end
  end

end
