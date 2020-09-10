class RenamePrefectureCodeColumnToExchanges < ActiveRecord::Migration[6.0]
  def change
    rename_column :shippings, :prefecture_code, :prefecture_id
  end
end
