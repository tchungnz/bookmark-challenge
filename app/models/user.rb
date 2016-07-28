require 'bcrypt'
require 'dm-validations'

class User
  attr_reader :password
  attr_accessor :password_confirmation

include DataMapper::Resource

validates_confirmation_of :password

  property :id, Serial
  property :email, String
  property :password_digest, String, length: 60



  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

end
