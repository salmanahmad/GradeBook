class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :instructions

      t.timestamps
    end
  end
end
