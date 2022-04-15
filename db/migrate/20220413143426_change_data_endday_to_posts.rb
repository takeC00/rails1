class ChangeDataEnddayToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :endday, :date
  end
end
