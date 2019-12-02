class CreateEstoques < ActiveRecord::Migration[5.2]
  def change
    create_table :estoques do |t|
      t.date :data
      t.float :quantidade
      t.belongs_to :pessoa, foreign_key: true
      t.belongs_to :estoque, foreign_key: true
      t.belongs_to :produto, foreign_key: true

      t.timestamps
    end
  end
end
