class AddPasswordDigestToSuppliers < ActiveRecord::Migration[5.2]
  def change
    add_column :suppliers, :password_digest, :string
  end
end
