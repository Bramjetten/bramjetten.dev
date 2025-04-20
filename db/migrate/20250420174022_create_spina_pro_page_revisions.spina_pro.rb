# This migration comes from spina_pro (originally 7)
class CreateSpinaProPageRevisions < ActiveRecord::Migration[6.1]
  def change
    create_table :spina_pro_page_revisions do |t|
      t.jsonb :content
      t.jsonb :json_attributes
      t.belongs_to :page, index: true
      t.text :note
      t.string :updated_by
      t.timestamps null: false
    end
  end
end
