class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, presence: true, length: { maximum: 50 }, format: { with: /\A[a-zA-Z0-9!@#$%^&*_+=\\-\\.?><()]+\z/, message: "can only contain letters, numbers, and special characters" }
    validates :date_of_birth, presence: true
    validate :date_of_birth_cannot_be_in_future

    has_secure_password

    enum gender: { male: 0, female: 1 }

    belongs_to :role

    private

    def date_of_birth_cannot_be_in_future
        errors.add(:date_of_birth, "cannot be in the future") if date_of_birth.present? && date_of_birth.future?
    end
end
