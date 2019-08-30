class ChangeTypeToSpecies < ActiveRecord::Migration[6.0]
  def change
    remove_column :animals, :type, :string
    add_column :animals, :species, :string
  end
end
