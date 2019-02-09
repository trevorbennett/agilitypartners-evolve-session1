class CreateCallLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :call_logs do |t|
      t.references :to, foreign_key: true
      t.references :from, foreign_key: true
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
