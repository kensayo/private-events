class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances

  scope :upcoming, -> { where('date > ?', Date.today).order('date ASC') }
  scope :past, -> { where('date < ?', Date.today).order('date DESC') }

  def self.attend_past(my_id)
    @connection = ActiveRecord::Base.connection
    @connection.exec_query("SELECT events.id, events.name, events.description, events.date
                                      FROM events join attendances ON events.id = attendances.event_id
                                      WHERE attendances.user_id = #{my_id} AND events.date < '#{Date.today}'")
  end

  def self.attend_upcoming(my_id)
    @connection = ActiveRecord::Base.connection
    @connection.exec_query("SELECT events.id, events.name, events.description, events.date
                                      FROM events join attendances ON events.id = attendances.event_id
                                      WHERE attendances.user_id = #{my_id} AND events.date > '#{Date.today}'")
  end
end
