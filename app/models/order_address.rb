class OrderAddress
  include ActiveModel::Model
  attr_accessor :postal_cord, :prefecture_id, :city, :address, :building_name, :phone_number, :user_id, :item_id, :token

  with_options presence: true do
    validates :postal_cord, format: { with: /\A\d{3}[-]\d{4}\z/, message: "Input correctly" }
    validates :prefecture_id, numericality: { other_than: 1, message: "Select" }
    validates :city
    validates :address
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }, numericality: { integer_only: true }
    validates :user_id
    validates :item_id
    validates :token
  end
  validates :prefecture_id, numericality: {other_than: 0, message: "can't be blank"}

  def save
    order = Order.create(item_id: item_id, user_id: user_id)
    Address.create(postal_cord: postal_cord, prefecture_id: prefecture_id, city: city, address: address, building_name: building_name, phone_number: phone_number, order_id: order.id)
  end

end