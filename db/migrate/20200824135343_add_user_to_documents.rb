class AddUserToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_reference :documents, :user, null: false, foreign_key: true
  end
end
