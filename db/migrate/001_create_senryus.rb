class CreateSenryus < ActiveRecord::Migration
  def change
    create_table :senryus do |t|
      t.string :first_part
      t.string :second_part
      t.string :last_part
    end
  end
end
