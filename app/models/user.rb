class User < ApplicationRecord
  # requiring library
  require "bcrypt"

  # model exec
  before_create :set_encrypt_password

  #validations
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }

  # encrypting password
  def set_encrypt_password
    self.password = BCrypt::Password.create self.password
  end

end
