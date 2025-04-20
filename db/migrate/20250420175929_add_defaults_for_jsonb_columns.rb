class AddDefaultsForJsonbColumns < ActiveRecord::Migration[7.2]
  def change
    change_column :spina_resources, :slug, :jsonb, default: {}
  end
end
