class Store < ActiveRecord::Base
  def to_s
    "Store #{id}: #{name}, Annual Revenue: #{annual_revenue}, Mens Apparel: #{mens_apparel}, Womens Apparel: #{womens_apparel}"
  end
end
