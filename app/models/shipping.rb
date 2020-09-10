class Shipping < ApplicationRecord
 # validates :name, presence: true
    # validates :introduction, presence: true
    # accepts_nested_attributes_for :exchanges, allow_destroy: true
    belongs_to :exchange
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :prefecture
end
