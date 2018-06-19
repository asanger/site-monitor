class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.references :site, foreign_key: true
      t.integer :response_time
      t.string :status_code

      t.timestamps
    end
  end
end
