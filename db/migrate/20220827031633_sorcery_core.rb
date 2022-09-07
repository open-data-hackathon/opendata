class SorceryCore < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email,            null: false, index: { unique: true }
      t.string :crypted_password
      t.string :salt
      t.string :first_name, null: false, limit: 255 
      t.string :last_name, null:false, limit: 255 
      t.string :nickname, limit: 255
      t.text :body, limit: 16383
      t.string :avatar
      t.timestamps                null: false
    end
  end
end
