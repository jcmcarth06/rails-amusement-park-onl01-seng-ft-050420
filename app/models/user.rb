class User < ActiveRecord::Base
    has_secure_password
    has_many :rides
    has_many :attractions, through: :rides
    validates :name, :password, :nausea, :happiness, :tickets, :height, :admin, prescence: true
end
