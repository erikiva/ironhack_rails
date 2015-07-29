class Entry < ActiveRecord::Base
  belongs_to :project
  validates :hours, :minutes, numericality: {only_integer: true, greater_than: 0}
  validates :hours, :minutes, :date, presence: true 
  validates_associated :project
  validates :project_id, presence: true
end
