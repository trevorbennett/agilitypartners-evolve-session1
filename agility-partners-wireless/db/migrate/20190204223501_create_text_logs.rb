class CreateTextLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :text_logs do |t|
      t.references :to, foreign_key: true
      t.references :from, foreign_key: true
      t.datetime :sent
      t.string :message

      t.timestamps
    end
  end
end
