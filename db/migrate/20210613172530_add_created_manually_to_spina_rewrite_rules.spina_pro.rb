# This migration comes from spina_pro (originally 2)
class AddCreatedManuallyToSpinaRewriteRules < ActiveRecord::Migration[6.1]
  def change
    add_column :spina_rewrite_rules, :created_manually, :boolean, default: false, null: false
  end
end
