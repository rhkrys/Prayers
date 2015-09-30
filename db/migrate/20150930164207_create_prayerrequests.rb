class CreatePrayerrequests < ActiveRecord::Migration
  def change
    create_table :prayerrequests do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
