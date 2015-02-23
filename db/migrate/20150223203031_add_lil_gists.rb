class AddLilGists < ActiveRecord::Migration
  def change
    create_table :lilgists do |t|
      t.string :name, null: false
      t.string :content, null: false

      t.references :user, null: false
     end
  end
end
