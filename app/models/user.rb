class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable

    validates :first_name, :last_name, :company_name, :web_address, :presence => true
    validates :password, confirmation: false, presence: true,
                        length: { minimum: 8 }, on: :create
    # validates_web_address :web_address

#   def web_address_numbers_and_letters_only
#       is_valid = /^[a-zA-Z0-9]*$/.match(web_address)
#       if not is_valid
#           errors.add(:invalid_web_address, "Letters and/or numbers only, please.")
#       end
#   end

end
