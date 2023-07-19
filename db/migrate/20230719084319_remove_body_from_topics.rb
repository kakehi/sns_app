class RemoveBodyFromTopics < ActiveRecord::Migration[7.0]
  def change
    remove_column :topics, :body, :string
  end
end
