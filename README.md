#　テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | unique: true, null: false |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| birthday           | date   | null: false               |
| full_name          | string | null: false               |
| full_name_kana     | string | null: false               |
| last_name          | string | null: false               |
| last_name_kana     | string | null: false               |
 
## Association
- has_many :products
- has_many :purchases

## productsテーブル

| Column               | Type        | Options                        |
| -------------------- | ----------- | ------------------------------ |
| name                 | string      | null: false                    |
| price                | integer     | null: false                    |
| text                 | text        | null: false                    |
| user                 | references  | null: false, foreign_key: true |
| product_condition_id | integer     | null: false                    |
| shipping_charges_id  | integer     | null: false                    |
| shipping_area_id     | integer     | null: false                    |
| days_to_ship_id      | integer     | null: false                    |
| category_id          | integer     | null: false                    |

## Association
- has_one :purchase
- has_one :user


## purchasesテーブル

| Column   | Type       | Options                         |
| -------- | ---------- | ------------------------------- |
| user     | references | null: false, foreign_key: true  |
| product  | references | null: false, foreign_key: true  |

## Association
- has_one :delivery
- belongs_to :product
- belongs_to :user

## deliveriesテーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| name                  | string     | null: false                    |
| price                 | integer    | null: false                    |
| product_condition_id  | integer    | null: false                    |
| days_to_ship_id       | integer    | null: false                    |
| purchase              | references | null: false, foreign_key: true |
| postal_code           | string     | null: false                    |
| shipping_area_id      | integer    | null: false                    |
| phone_number          | string     | null: false                    |

## Association
- belongs_to :purchase



