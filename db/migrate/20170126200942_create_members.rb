class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :last_name
      t.string :title
      t.string :email

      t.timestamps
    end
  end
end
