class AddAuthorIdToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :author, null: true, foreign_key: true
  end
end
