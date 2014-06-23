class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :content,    :default => ""

      t.timestamps
    end
  end
end
