# This migration comes from spina_pro (originally 8)
class AddDraftToSpinaProPageRevisions < ActiveRecord::Migration[6.1]
  def change
    add_column :spina_pro_page_revisions, :draft, :boolean, default: true, null: false
  end
end
