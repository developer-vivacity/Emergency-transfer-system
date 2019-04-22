class Treatment < ApplicationRecord
  

  
  def summary
    [description, "to", necessity].join(" ")
  end
end
