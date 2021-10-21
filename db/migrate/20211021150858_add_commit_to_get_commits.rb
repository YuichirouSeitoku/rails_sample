class AddCommitToGetCommits < ActiveRecord::Migration[6.1]
  def change
    add_column :get_commits, :commit, :string
  end
end
