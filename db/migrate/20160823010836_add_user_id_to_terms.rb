class AddUserIdToTerms < ActiveRecord::Migration[5.0]
  def change
    add_column :terms, :user_id, :integer
  end
end
