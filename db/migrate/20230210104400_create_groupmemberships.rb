class CreateGroupmemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :groupmemberships do |t|
      t.belong_to :group 
      t.belong_to :user 
      t.integer :plane
      t.datetime :membership_date

      t.timestamps
    end
  end
end
