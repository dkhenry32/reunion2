class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :user, index: true
      t.string :relationship_type
      t.integer :relative_user_id

      t.timestamps
    end
  end
end
