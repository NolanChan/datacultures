class Activity < ActiveRecord::Base
  belongs_to :student
  acts_as_paranoid

  def self.score!(activity)
    create(activity)
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |activity|
        csv << activity.attributes.values_at(*column_names)
      end
    end
  end

end
