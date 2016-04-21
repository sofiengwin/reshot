class Link < ActiveRecord::Base
  belongs_to :user

  validates :original_url, presence: true
end
