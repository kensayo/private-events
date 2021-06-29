class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validate :validate_attend

  private
  def validate_attend
    if Attendance.where(user_id: self.user_id ).where(event_id: self.event_id).count == 1
      self.errors.add :user_id, 'You have already mark presence in this event'
    end
  end
end
