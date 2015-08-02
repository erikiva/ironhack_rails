class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_format_of :phone, :with => /[0-9\s]*/
end
