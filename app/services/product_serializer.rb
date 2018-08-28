class ProductSerializer

  def self.serialize(product)
    description = product.description.nil? ? "" : product.description
    inventory = product.inventory.nil? ? "0" : product.inventory.to_s
    serialized_product = '{'
    serialized_product += '"id": "' + product.id.to_s + '", '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": ' + product.price.to_s + ', '
    serialized_product += '"inventory": ' + inventory + ', '
    serialized_product += '"description": "' + description + '"}'
  end

end
