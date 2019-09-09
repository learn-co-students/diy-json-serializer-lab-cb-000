class ProductSerializer
  def self.serialize(product)
    serialized_product = '{'
    serialized_post += '"id": ' + product.id.to_s + ', '
    serialized_post += '"price": ' + product.price.to_s + ', '
    serialized_post += '"name": "' + product.title + '", '
    serialized_post += '"inventory": ' + product.inventory.to_s + ', '
    serialized_post += '"description": "' + product.description
    serialized_post += '}'
  end
end
