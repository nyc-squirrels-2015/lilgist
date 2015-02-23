class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true
  has_many :lilgists

  def lilgist_count
    lilgists.length
  end
end

