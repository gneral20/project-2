class RemovColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :profile_image
  end
end
