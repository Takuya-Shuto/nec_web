class RenameMassageToEvents < ActiveRecord::Migration[5.1]
  def change
    rename_column :events, :message, :message
  end
end
