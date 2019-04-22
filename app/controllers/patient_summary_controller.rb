class PatientSummaryController < ApplicationController
  
  def show
    @patient = Patient.find(params[:id])
    @facility = Facility.first

    
    @dignosis = Diagnosis.find_by_id(@patient.dygnosis_id)
    @allergies = Allergy.find_by_id(@patient.allergies_id)
    @dignosis_procedure = DiagnosticProcedure.find_by_id(@patient.dygnosis_procedure_id)
    @medications = MedicationOrder.find_by_id(@patient.medications_id)
    @treatments = Treatment.find_by_id(@patient.treatments_id)
    
    add_breadcrumb "<< #{@patient.full_name}", edit_patient_path(@patient)
  end
  
end
