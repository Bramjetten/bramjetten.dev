# This migration comes from spina_pro (originally 6)
class CreateSpinaProSearchDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :spina_pro_search_documents do |t|
      t.text :content
      t.belongs_to :searchable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
