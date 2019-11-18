class CreateUnidades < ActiveRecord::Migration[5.2]
  def change
    create_table :unidades do |t|
      t.string :sigla
      t.string :descricao

      t.timestamps
    end
  end
end
