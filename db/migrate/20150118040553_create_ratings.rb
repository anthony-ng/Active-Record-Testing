class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :user
      t.belongs_to :skill
      t.integer :proficiency, default: 0

      t.timestamps
    end
  end
end
