class ChangeTimeFieldForJokes < ActiveRecord::Migration
  def change
    change_column :jokes, :time, :date
  end
end
