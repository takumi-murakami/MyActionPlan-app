class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string     :title,         null: false
      t.text       :text,          null: false
      t.integer    :genre_id,      null: false
      t.string     :postal_code,   null: false
      t.string     :address,       null: false
      t.datetime   :start_date,    null: false
      t.datetime   :end_date,      null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps 
    end 
  end
end
