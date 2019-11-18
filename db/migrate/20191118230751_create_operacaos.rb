class CreateOperacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :operacaos do |t|
      t.string :descricao
      t.string :tipo

      t.timestamps
    end
  end
end
