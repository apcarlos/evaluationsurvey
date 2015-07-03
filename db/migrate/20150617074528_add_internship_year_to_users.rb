class AddInternshipYearToUsers < ActiveRecord::Migration
  def change
    add_column :users, :internship_year, :string
  end
end
