class UpdateColumnName < ActiveRecord::Migration[6.0]
  def change
  	rename_column :articles, :DESCRITION, :DESCRIPTION
  end

end
