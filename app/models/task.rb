class Task < ApplicationRecord
  before_create :set_completed_to_false
  private
  def set_completed_to_false
    self.completed = false unless self.completed == true
  end
end
