class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title, :text, :start_date, :end_date, :begin_at, :closed_at
  
    with_options numericality: { other_than: 1 } do
      validates :genre_id
    end
  end
end
