class Record < ActiveRecord::Base
  belongs_to :doctor

  validates :time_at, uniqueness: {scope: :doctor}, presence: true
  validates :name, presence: true
  validates :phone, presence: true

end
