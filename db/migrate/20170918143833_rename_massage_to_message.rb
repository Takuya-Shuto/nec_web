class RenamemessageToMessage < ActiveRecord::Migration[5.1]
  def change
    rename_column :Events , :message , :message
  end
end
