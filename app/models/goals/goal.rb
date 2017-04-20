class Goals::Goal < ApplicationRecord
  self.table_name = "goals"

  def percent_complete
    (current_amount / goal_amount).round(2)
  end
end
