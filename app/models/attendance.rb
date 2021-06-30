class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validate :validate_attend

  private

  def validate_attend
    if Attendance.where(user_id: user_id).where(event_id: event_id).count == 1
      errors.add :user_id, 'You have already mark presence in this event'
    end
  end
end
