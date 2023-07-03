class Role < ApplicationRecord
    has_many :role_access, dependent: :destroy
    has_many :accesses, through: :role_access
    has_many :users
end
