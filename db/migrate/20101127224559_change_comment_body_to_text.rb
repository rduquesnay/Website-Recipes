class ChangeCommentBodyToText < ActiveRecord::Migration
  def self.up
    change_column :comments, :body, :text
  end

  def self.down
    change_column :comments, :text, :body
  end
end
