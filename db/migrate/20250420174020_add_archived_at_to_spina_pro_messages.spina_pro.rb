# This migration comes from spina_pro (originally 5)
class AddArchivedAtToSpinaProMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :spina_pro_messages, :archived_at, :datetime
  end
end
