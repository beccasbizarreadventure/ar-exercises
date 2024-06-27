class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3, message: "Must be more than 3 characters"}
  validates :annual_revenue, numericality: {only_integer: true}
  validate :must_carry_apparel

  def must_carry_apparel
    unless womens_apparel || mens_apparel
      errors.add(:base, message: "Must carry some type of apparel") #If neither is true, it adds an error message to the base object (which means it's a general error related to the object rather than a specific attribute).
    end
  end

  def to_s
    "Store #{id}: #{name}, Annual Revenue: #{annual_revenue}, Mens Apparel: #{mens_apparel}, Womens Apparel: #{womens_apparel}"
  end
end
