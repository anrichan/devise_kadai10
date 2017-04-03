class AddAttachmentImgeToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :imge
    end
  end

  def self.down
    remove_attachment :articles, :imge
  end
end
