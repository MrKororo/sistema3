class AddPaperclipToEmpresa < ActiveRecord::Migration
 def up
    add_attachment :empresas, :image
  end

  def down
    remove_attachment :empresas, :image
  end
end
