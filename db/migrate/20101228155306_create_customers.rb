class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.column "Firstname", :string
      t.column "Lastname", :string
      t.column "Nick", :string
      t.column "LoginName", :string
      t.column "Password", :string
      t.column "Email", :string
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
