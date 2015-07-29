class Project < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :name, length: {maximum: 10}, format: {with: /[a-zA-Z0-9\s]+/}
  has_many :entries
  def self.iron_find(id)
    self.where(id:id).first
  end
  def self.clean_old
    projects = self.where("created_at < ?", Date.current - 1.week)
    projects.destroy_all
  end
  def self.last_created_projects(number)
      order(created_at: :desc).limit(number)
  end
end
