class CreatePatientTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_treatments do |t|
		t.integer :parent_id
		t.integer :allergies_id
		t.integer :diagnosis_id
		t.integer :diagnostic_procedure_id
		t.integer :facilities_id
		t.integer :observation_id
		t.integer :symptoms_id
		t.integer :treatment_id
    end
  end
end
