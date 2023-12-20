# テーブル設計

## Usersテーブル

|  Column            |  Type   |  Options                  |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| last_name          | string  | null: false               |
| last_name_read     | string  | null: false               |
| first_name         | string  | null: false               |
| first_name_read    | string  | null: false               |
| birthday           | date    | null: false               |


### Association

- has_many :items
- has_many :orders

## Itemsテーブル

|  Column       |  Type      |  Options                       |
| ------------- | ---------- | ------------------------------ |
| item          | string     | null: false                    |
| text          | text       | null: false                    |
| price         | integer    | null: false                    |
| category_id   | integer    | null: false                    |
| status_id     | integer    | null: false                    |
| charge_id     | integer    | null: false                    |
| prefecture_id | integer    | null: false                    |
| days_id       | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association
- has_one :order
- belongs_to :user

## Ordersテーブル

|  Column       |  Type      |  Options                       |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## Addressesテーブル

|  Column          |  Type      |  Options                       |
| ---------------- | ---------- | ------------------------------ |
| card_info        | string     | null: false                    |
| year             | integer    | null: false                    |
| security         | integer    | null: false                    |
| prefecture_id    | integer    | null: false                    |
| city             | string     | null: false                    |
| street           | string     | null: false                    |
| building_name    | string     | null: false                    |
| phone_number     | string     | null: false                    |
| order            | references | null: false, foreign_key: true |

### Association

- belongs_to :order