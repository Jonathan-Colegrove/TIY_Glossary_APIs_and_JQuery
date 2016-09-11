class Category < ApplicationRecord
  belongs_to :user, optional: true
  
  has_many :associations, dependent: :delete_all
  has_many :terms, through: :associations

  def authorized?(user_whos_asking)
    user == user_whos_asking
  end
end
