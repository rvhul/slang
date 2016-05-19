class AddUserToLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :user, :string
  end
end
