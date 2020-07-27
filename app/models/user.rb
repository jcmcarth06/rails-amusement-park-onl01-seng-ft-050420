class User < ActiveRecord::Base
    has_secure_password
    has_many :rides
    has_many :attractions, through: :rides
    # validates :name, :password , :nausea , :happiness, :tickets ,:height , presence: true
    
    def mood
        if self.nausea > self.happiness
            'sad'
        else
            'happy'
        end
    end

end
