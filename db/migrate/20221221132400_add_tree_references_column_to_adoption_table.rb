class AddTreeReferencesColumnToAdoptionTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :adoptions, :tree, foreign_key: true
  end
end
s
