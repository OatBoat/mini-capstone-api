require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest


  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.count
  end


  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id","name", "price", "image_url", "description", "is_discounted", "product_tax", "product_total"],  data.keys
    puts "-------------"
    p response.body
    puts "-------------"
  end


  test "create" do
    assert_difference "Product.count" , 1 do
      post "/products.json", params:{name: "chef knife", price: 100, image_url: "knifing", description: "big knife"} 
      puts "----------"
      p Product.last.price
      puts "----------"
      assert_response 200
    end
  end

  test "update" do
    product = Product.first
    put "/products/#{product.id}.json", params: {name: "updating"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "updating", data["name"]
  end
  
 test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json"
      assert_response 200
    end
  end 

  


end
