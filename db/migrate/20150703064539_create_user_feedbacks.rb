class CreateUserFeedbacks < ActiveRecord::Migration
  def change
    create_table :user_feedbacks do |t|

      t.timestamps null: false
    end
  end
end
