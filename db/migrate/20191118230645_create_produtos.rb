class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :unidade
      t.string :grupo

      t.timestamps
    end
  end
end
