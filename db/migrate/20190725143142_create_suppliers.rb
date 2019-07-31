class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :fullname
      t.string :email
      t.string :companyname
      t.string :companyReg
      t.string :city
      t.integer :phoneNumber
      t.string :landmark
      t.string :district

      t.timestamps
    end
  end
end
