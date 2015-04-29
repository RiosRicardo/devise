class User < ActiveRecord::Base

has_many:directorios, dependent: :destroy
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 	validates :rut, length: { in: 8..12 , message: "between 8 and 12 character minimum"}
	validates :rut, uniqueness: {case_sensitive: false ,message: "registered"}
	validates :nombre, :presence => {:message => "can't be blank"}
 	validates :apellidos, :presence => {:message => "can't be blank"}
 	validates :email, :presence => {:message => "can't be blank"}
 	validates :email, uniqueness: {case_sensitive: false}
 	validates :username, :presence => {:message => "can't be blank"}
 	validates :username, uniqueness: {case_sensitive: false}
 	validates :password, :presence => {:message => "can't be blank"}

end
