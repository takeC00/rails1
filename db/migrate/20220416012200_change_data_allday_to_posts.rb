class ChangeDataAlldayToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :allday, :boolean
  end
end
