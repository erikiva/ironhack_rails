class RenameLanguage < ActiveRecord::Migration
  def up
    rename_column :books, :language, :locale
  end
  
  def down 
    rename_column :books, :locale, :language
  end
end
