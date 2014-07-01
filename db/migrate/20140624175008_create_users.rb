class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Name
      t.string :Mailing
      t.text :Address
      t.string :Gender
      t.string :Date
      t.string :of
      t.date :Birth
      t.belongs_to :Relationship, index: true
      t.text :bio

      t.timestamps
    end
  end
end
