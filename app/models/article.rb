class Article < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  has_many :comments
  validates :title, presence: true,
            length: { minimum: 5 }
end
