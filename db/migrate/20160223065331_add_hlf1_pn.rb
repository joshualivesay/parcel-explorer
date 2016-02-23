class AddHlf1Pn < ActiveRecord::Migration
  def change
    add_column :imports, :HLF1PN, :string
  end
end
