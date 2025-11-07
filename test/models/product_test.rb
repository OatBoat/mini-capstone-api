require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "friendly_create_time" do
    product = Product.new(created_at: "2025-10-31 01:02:28.672418000 +0000")
    assert_equal "Friday, Oct 31", product.friendly_created_at
  end
end
