class CreateGetCommits < ActiveRecord::Migration[6.1]
  def change
    create_table :get_commits do |t|

      t.timestamps
    end
  end
end
