class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :company
      t.string :title
      t.text :body_desktop
      t.text :body_mobile
      t.boolean :is_active
      t.text :apply_url
      t.string :city
      t.string :state_code
      t.boolean :is_full_time
      t.boolean :is_internship
      t.string :degree_min
      t.string :exp_min
      t.string :exp_max
      t.string :salary_min
      t.string :salary_max

      t.timestamps
    end
    add_index :jobs, :company_id
  end
end
