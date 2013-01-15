class CreateLaboratoires < ActiveRecord::Migration
  def change
    create_table :laboratoires do |t|
      t.string :nom

      t.timestamps
    end
  end
end
