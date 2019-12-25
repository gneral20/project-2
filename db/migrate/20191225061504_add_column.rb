class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :profile_image, :string ,default: "https://cms.qz.com/wp-content/uploads/2017/03/twitter_egg_blue.png?w=900&h=900&crop=1&strip=all&quality=75"
  end
end
