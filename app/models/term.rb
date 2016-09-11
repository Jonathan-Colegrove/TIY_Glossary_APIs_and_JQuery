class Term < ApplicationRecord
  belongs_to :user, optional: true

  has_many :associations, dependent: :delete_all
  has_many :categories, through: :associations

  def authorized?(user_whos_asking)
    user == user_whos_asking
  end
end
