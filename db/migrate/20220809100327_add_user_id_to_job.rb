class AddUserIdToJob < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :job, foreign_key: true, index: false
    add_reference :jobs, :user, foreign_key: true
  end
end
