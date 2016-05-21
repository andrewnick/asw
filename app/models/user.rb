class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable

	validates :name, presence: true

	def name
		"#{first_name} #{last_name}"
	end

	def family
		where(family_name: self.family_name) 
	end

	def email_required?
		false
	end

	def email_changed?
		false
	end
end
