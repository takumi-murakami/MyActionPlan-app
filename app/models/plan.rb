class Plan < ApplicationRecord
  belongs_to :user
  has_one :address
  has_one_attached :image
  # belongs_to_active_hash :genre
  # belongs_to_active_hash :prefecture

  with_options presence: true do
    validates :title, :text, :image, :action_date
  
    # with_options numericality: { other_than: 1 } do
    #   validates :genre_id, :prefecture_id
    # end
  end
end
