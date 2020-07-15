class ProductSerializer

  def self.serialize(product)

    # note that I had to add the if-else statements to handle null inventory and description values, because the seed file skipped those for unknown reasons, eye roll

    serialized_product = '{'
 
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": "' + product.price.to_s + '", '
    if product.inventory
      serialized_product += '"inventory":' + product.inventory.to_s + ', ' 
    else
      serialized_product += '"inventory": 0,'
    end
    if product.description
      serialized_product += '"description": "' + product.description + '"' 
    else
      serialized_product += '"description": "no description"'
    end

    serialized_product += '}'

  end

end