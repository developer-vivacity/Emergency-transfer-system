class DiagnosticProcedure < ApplicationRecord
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  

  
  # **********************************
  # Instance Methods
  # 
  def date
    moment.strftime("%m-%d-%Y")
  end
  
  def time
    moment.strftime("%I:%M%p")
  end
  
  def summary
    [description, "at", time].join(" ")
  end
  
end
