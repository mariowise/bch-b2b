class CreateCompanyTags < ActiveRecord::Migration
  def change
    create_table :company_tags do |t|
      t.references :tag, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
