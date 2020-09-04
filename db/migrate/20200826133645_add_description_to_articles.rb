class AddDescriptionToArticles < ActiveRecord::Migration[6.0]
  def change
  	add_column :articles, :DESCRITION, :text
  	add_column :articles, :created_at, :datetime
  	add_column :articles, :updaated_at, :datetime
  	
  end
end
