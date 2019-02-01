class User < ApplicationRecord
  # requiring library
  require "bcrypt"
  has_many :courses
  
  # model exec
  before_create :set_encrypt_password

  #validations
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }

  # encrypting password
  def set_encrypt_password
    self.password = BCrypt::Password.create self.password
  end

  def is_valid_password?(password):
    self.password == BCrypt::Engine.hash_secret(password, self.password)
  end

end
