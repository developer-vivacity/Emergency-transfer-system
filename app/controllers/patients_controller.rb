class PatientsController < ApplicationController
  
  def index
    @patients = Patient.all
  end
  
  def edit
    add_breadcrumb '<< Patients', patients_path
    
    @patient = Patient.find(params[:id])
  end
  
  def new
    add_breadcrumb '<< Patients', patients_path
    
    @patient = Patient.new
  end
  
  def create
    add_breadcrumb '<< Patients', patients_path
    
    @patient = Patient.new(user_params)
    
    if @patient.save
      Patient.where(id: @patient.id).update_all(allergies_id: params[:allergies_id],dygnosis_id: params[:dygnosis_id],dygnosis_procedure_id: params[:dygnosis_procedure_id],medications_id: params[:medications_id],treatments_id: params[:treatments_id],admission_id: params[:admission_id])
      flash[:notice] = "Patient created successfully!"
      redirect_to edit_patient_path(@patient)
    else
      flash[:error] = @patient.errors.full_messages.join(", ")
      render 'new'
    end
  end
  
  def update
    add_breadcrumb '<< Patients', patients_path
    
    @patient = Patient.find(params[:id])

    
    Patient.where(id: params[:id]).update_all(allergies_id: params[:allergies_id],dygnosis_id: params[:dygnosis_id],dygnosis_procedure_id: params[:dygnosis_procedure_id],medications_id: params[:medications_id],treatments_id: params[:treatments_id],admission_id: params[:admission_id])
    if @patient.update_attributes(user_params)
      flash[:notice] = "Patient updated successfully!"
      redirect_to edit_patient_path(@patient)
    else
      render 'edit'
    end
  end
  
  private
  
  def user_params
    params.require(:patient).permit(:first_name, :middle_name, :last_name, :mr, :date_of_birth, :gender)
  end
  
  
end
