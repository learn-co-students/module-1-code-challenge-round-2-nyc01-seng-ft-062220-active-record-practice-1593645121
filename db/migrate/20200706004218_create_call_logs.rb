class CreateCallLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :call_logs do |t|
      t.integer :employee_id
      t.integer :specialist_id
    end
  end
end
