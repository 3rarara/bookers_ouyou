class Group < ApplicationRecord

  has_many :group_users, dependent: :destroy
  belongs_to :owner
  has_many :users

  validates :name, presence: true
  validates :introduction, presence: true

  has_one_attached :group_image

  def is_owned_by?(user)
    owner.id == current.id
  end
end
