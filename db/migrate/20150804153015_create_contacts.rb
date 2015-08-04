class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :home_number
      t.string :mobile_number
      t.string :email
      t.timestamps null: false
    end
  end
end
