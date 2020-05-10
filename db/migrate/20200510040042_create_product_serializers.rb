class CreateProductSerializers < ActiveRecord::Migration[5.0]
  def change
    create_table :product_serializers do |t|

      t.timestamps
    end
  end
end
