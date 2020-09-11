class Item < ApplicationRecord
    validates :name, presence: true
    validates :introduction, presence: true
    validates :category_id, presence: true
    validates :condition_id, presence: true
    validates :delivery_burden_id, presence: true
    validates :prefecture_id, presence: true
    validates :prepare_day_id, presence: true
    validates :price, presence: true


 belongs_to :user
 has_one_attached :avatar
 extend ActiveHash::Associations::ActiveRecordExtensions
 belongs_to_active_hash :category
 belongs_to_active_hash :condition
 belongs_to_active_hash :deliveryBurden
 belongs_to_active_hash :prepareDay
 belongs_to_active_hash :prefecture
 

 has_one :exchange

 
end
