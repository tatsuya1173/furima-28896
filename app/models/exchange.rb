class Exchange < ApplicationRecord
    belongs_to :user
    belongs_to :item
    has_one :shipping
    accepts_nested_attributes_for :shipping
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :prefecture
end
