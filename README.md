# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | unique: true, null: false |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| birthday           | date   | null: false               |
| first_name         | string | null: false               |
| first_name_kana    | string | null: false               |
| last_name          | string | null: false               |
| last_name_kana     | string | null: false               |
 
## Association
- has_many :items
- has_many :purchases

## itemsテーブル

| Column               | Type        | Options                        |
| -------------------- | ----------- | ------------------------------ |
| name                 | string      | null: false                    |
| item_price           | integer     | null: false                    |
| item_information     | text        | null: false                    |
| user                 | references  | null: false, foreign_key: true |
| item_condition_id    | integer     | null: false                    |
| shipping_charges_id  | integer     | null: false                    |
| prefecture_id        | integer     | null: false                    |
| days_to_ship_id      | integer     | null: false                    |
| category_id          | integer     | null: false                    |

## Association
- has_one :purchase
- belongs_to :user


## purchasesテーブル

| Column   | Type       | Options                         |
| -------- | ---------- | ------------------------------- |
| user     | references | null: false, foreign_key: true  |
| item     | references | null: false, foreign_key: true  |

## Association
- has_one :delivery
- belongs_to :item
- belongs_to :user

## deliveriesテーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| purchase              | references | null: false, foreign_key: true |
| postal_code           | string     | null: false                    |
| phone_number          | string     | null: false                    |
| building_name         | string     |                                |
| prefecture_id         | integer    | null: false                    |
| address               | string     | null: false                    |
| municipality          | string     | null: false                    |


## Association
- belongs_to :purchase



