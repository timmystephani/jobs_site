class CreateSavedJobs < ActiveRecord::Migration
  def change
    create_table :saved_jobs do |t|
      t.references :user
      t.references :job
      t.boolean :is_active

      t.timestamps
    end
  end
end
