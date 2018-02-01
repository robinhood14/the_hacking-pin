class User < ApplicationRecord
	has_many :pins, dependent: :destroy#le user peut avoir plusieurs pins
	has_many :comments, dependent: :destroy #le user peut avoir plusieurs commentaires rattachés aux pins
validates :name, presence: true, length: { maximum: 20 } #validation, username ne peut pas être vide et fais au maximum 20 char
end
