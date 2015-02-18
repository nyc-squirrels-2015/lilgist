class Language < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :lilgists
end
