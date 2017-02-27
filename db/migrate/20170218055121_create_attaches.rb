class CreateAttaches < ActiveRecord::Migration[5.0]
  def change
    create_table :attaches do |t|
      t.string :name
      t.string :attachment
      t.belongs_to :user , foreign_key: true,index: true
      t.timestamps
    end
  end
end
