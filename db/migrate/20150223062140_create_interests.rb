class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.boolean :email_sent, default: false
      t.integer :user_id
      t.integer :listing_id
      t.timestamps
    end
  end
end
