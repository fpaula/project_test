class CreateDieselClearanceUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.string   :name,              :limit => 128
      t.string   :sex,               :limit => 1
      t.date     :birthdate
      t.string   :email,             :limit => 255
      t.boolean  :terms_of_service_accepted
      t.boolean  :admin
      t.boolean  :active
      t.string   :encrypted_password, :limit => 128
      t.string   :salt,               :limit => 128
      t.string   :confirmation_token, :limit => 128
      t.string   :remember_token,     :limit => 128
      t.timestamps
    end

    add_index :users, :email
    add_index :users, :remember_token
  end

  def self.down
    drop_table :users
  end
end
