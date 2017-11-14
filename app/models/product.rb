class Product < ApplicationRecord
  belong_to :category
  before_create :set_default_attr

  private
  def set_default_attr
    self.uudi = RandomCode.generate_product_uuid
  end
end
