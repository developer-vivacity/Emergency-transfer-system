class Addfieldstopatient < ActiveRecord::Migration[5.2]
  def change
  	add_column :patients, :allergies_id, :integer
  	add_column :patients, :dygnosis_id, :integer
  	add_column :patients, :dygnosis_procedure_id, :integer
  	add_column :patients, :medications_id, :integer
  	add_column :patients, :treatments_id, :integer
  	add_column :patients, :admission_id, :text
  end
end
