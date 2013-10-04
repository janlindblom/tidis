class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :what, limit: 45
      t.text :notes
      t.date :when
      t.time :start
      t.time :end
      t.references :category, index: true
      t.references :project, index: true
      t.references :user, index: true
      t.boolean :billable

      t.timestamps
    end
  end
end
