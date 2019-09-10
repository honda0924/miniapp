class Like < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  validates_uniaueness_of :post_id, scope: :user_id
end
