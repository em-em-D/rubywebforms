class Supplier < ApplicationRecord
    before_save { self.email = email.downcase }

    validates :fullname , presence: true , length: {maximum:60}
    VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true , length: {maximum: 255} , format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }
    validates :companyname, presence: true , length: {maximum: 255}
    validates :companyReg , presence:true ,length: {maximum: 20}
    validates :city ,presence:true , length: {maximum: 20}
    validates :phoneNumber ,presence:true, length: {maximum: 15}
    validates :landmark , presence:true, length: {maximum:255}
    validates :district, presence:true , length: {maximum:255}
    validates :password, presence: true, length:{ minimum: 6 }

    has_secure_password
end
