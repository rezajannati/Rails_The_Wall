class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :message, index: true

      t.timestamps
    end
  end
end
