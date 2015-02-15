class User < ActiveRecord::Base
	has_many :picks
  has_and_belongs_to_many :leagues 
  validates :first_name, presence: true
  validates :last_name, presence: true  
  validates :email, presence: true
  validates :password_digest, presence: true
  

  def password=(unencrypted_password)
  	unless unencrypted_password.empty?
  	#self.password_digest = encrypted_password
  	self.password_digest = BCrypt::Password.create(unencrypted_password)
  	@password = unencrypted_password
  end
  end


  def authenticate(unencrypted_password)
  	if BCrypt::Password.new(self.password_digest)==unencrypted_password
  		return self
  	else
  		return false
  	end
  end

  
end
