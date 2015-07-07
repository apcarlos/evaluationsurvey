class CreateUserFeedbacks < ActiveRecord::Migration
  def change
    create_table :user_feedbacks do |t|
	  t.text :feedback 
	  t.integer :user_id
      t.timestamps null: false
    end
  end
end
