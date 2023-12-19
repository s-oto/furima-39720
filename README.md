# DB設計
# Usersテーブル
nickname
email
password
last_name
last_name_read
first_name
first_name_read
birthday

### Association

- has_many :items
- has_many :orders

# Itemsテーブル
item
text
price
category_id
status_id
charge_id
prefecture_id
days_id
user

### Association
- has_one :order
- belongs_to :user

# Ordersテーブル
user
item

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

# Addressesテーブル
postal_cord
prefecture_id
city
address
building_name
phone_number
order

### Association

- belongs_to :order