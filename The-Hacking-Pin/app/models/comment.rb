class Comment < ApplicationRecord
 belongs_to :user, dependent: :destroy #appartient à user
 belongs_to :pin, dependent: :destroy #appartient à pin
validates :body, presence: true, length: { maximum: 140 }
end
