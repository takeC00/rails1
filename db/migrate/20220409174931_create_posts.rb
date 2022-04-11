class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :startday
      t.string :endday
      t.integer :allday
      

      t.timestamps
    end
  end
end
