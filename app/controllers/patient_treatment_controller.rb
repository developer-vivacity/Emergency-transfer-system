class PatientTreatmentController < ApplicationController

	def index
		@patients = Patient.all
	end
end
