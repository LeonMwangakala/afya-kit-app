class PatientsController < ApplicationController
   before_action :set_patient, only: [:edit, :update, :show, :destroy]
   def index
       @patients = Patient.all
   end
   def new
       @patient = Patient.new
       @user = User.new
   end
   
   def create
      @patient = Patient.create(patient_params) # whitelisting new patients
      #flash[:success] = "Patient was successfully registered"
   end
   
   def show

   end
   
   def edit

   end
   
   def update
      @patients = Patient.all
      @patient.update_attributes(patient_params)
      #flash[:success] = "Patient information was successfully updated"
   end
   
   
   def destroy
      @patients = Patient.all
      @patient.destroy
      #flash[:info] = "Patient was successfully deleted"
   end
   
   
   private 
       def set_patient
          @patient = Patient.find(params[:id]) 
       end
       def patient_params
           params.require(:patient).permit!
       end
       
end