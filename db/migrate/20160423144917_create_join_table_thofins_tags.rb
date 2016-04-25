class CreateJoinTableThofinsTags < ActiveRecord::Migration
  def change
    create_join_table :thofins, :tags do |t|
       t.index [:thofin_id, :tag_id]
       t.index [:tag_id, :thofin_id]
    end
  end
end
