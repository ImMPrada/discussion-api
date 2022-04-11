class AddNullConstraintToReactions < ActiveRecord::Migration[7.0]
  def change
    change_column_null :reactions, :reaction_type, false
  end
end
