require 'rails_helper'

RSpec.describe Student, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "Student" do
    it { should have_many :activities}
  end

  describe "Activity" do
    it { should belong_to :student}
end


