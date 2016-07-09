class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable

	validates :name, presence: true

	belongs_to :family

  	enum status: [ :no_reply, :attending, :not_attending ]

	def name
		"#{first_name} #{last_name}"
	end

	def self.family(family_name)
		 where(family_name: family_name)
	end

	def email_required?
		false
	end

	def email_changed?
		false
	end
end
