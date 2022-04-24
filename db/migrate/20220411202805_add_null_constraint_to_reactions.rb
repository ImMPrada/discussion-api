class AddNullConstraintToReactions < ActiveRecord::Migration[6.1]
  def change
    change_column_null :reactions, :reaction_type, false
  end
end
