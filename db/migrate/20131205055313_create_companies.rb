class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :logo
      t.string :address
      t.string :city
      t.string :state_code
      t.string :zip
      t.text :jobs_url
      t.text :description
      t.text :website
      t.string :phone
      t.string :industry
      t.string :size
      t.boolean :is_active

      t.timestamps
    end
  end
end
