class WebAddressValidator < ActiveModel::EachValidator
  def validate_each(record, attr_name, value)
    unless value =~ /^[a-zA-Z0-9]*$/i
      record.errors.add(attr_name, :email, options.merge(value: value))
    end
  end
end

class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable

    validates :first_name, :last_name, :company_name, :web_address, :team_size, :presence => true
    validates :password, confirmation: false, presence: true,
                        length: { minimum: 8 }, on: :create
    validates :web_address, uniqueness: true, :WebAddress => true

    validates_uniqueness_of :email
end