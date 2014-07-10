class CreateStudentsAndLinkActivities < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :canvas_id,   :null => false
      t.string :name,          :null => false
      t.string :short_name
      t.integer :sis_user_id,  :null => false
      t.integer :sis_login_id, :null => false
      t.string :primary

      t.timestamps
    end

    add_reference :activities, :student, index: true
  end
end
