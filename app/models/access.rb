class Access < ApplicationRecord
    has_many :role_access, dependent: :destroy
    has_many :roles, through: :role_access
end
