class AddUserIdToComment < ActiveRecord::Migration
  def change
  	add_reference :comments, :user, index: true
  end
end
