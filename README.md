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

# Ordersテーブル
user
item

# Addressesテーブル
postal_cord
prefecture_id
city
address
building_name
phone_number
order
