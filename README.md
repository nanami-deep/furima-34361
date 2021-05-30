#　テーブル設計

## usersテーブル

| Column             | Type   | Options      |
| ------------------ | ------ | ------------ |
| email              | string | unique: true |
| encrypted_password | string | null: false  |
| nickname           | string | null: false  |
| birthday           | date   | null: false  |
| full_name          | string | null: false  |
| full_name_kana     | string | null: false  |
| last_name          | string | null: false  |
| last_name_kana     | string | null: false  |
 
## Association
- has_many :product_users
- has_many :products

## productsテーブル

| Column               | Type        | Options                        |
| -------------------- | ----------- | ------------------------------ |
| name                 | string      | null: false                    |
| price                | integer     | null: false                    |
| text                 | text        | null: false                    |
| user                 | references  | null: false, foreign_key: true |
| product_condition_id | text        | null: false                    |
| shipping_charges_id  | integer     | null: false                    |
| shipping_area_id     | string      | null: false                    |
| days_to_ship_id      | integer     | null: false                    |
| category_id          | string      | null: false                    |

## Association
- has_many :purchase_users
- has_many :deliveries


## purchasesテーブル

| Column   | Type       | Options                         |
| -------- | ---------- | ------------------------------- |
| user     | references | null: false, foreign_key: true  |
| product  | references | null: false, foreign_key: true  |

## Association
- has_one :delivery
- belongs_to :product


## deliveriesテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| purchase         | references | null: false, foreign_key: true |
| postal_code      | integer    | null: false                    |
| prefectures      | string     | null: false                    |
| address          | string     | null: false                    |
| building_name    | string     | null:false                     |
| phone_number     | integer    | null: false                    |

## Association
- belongs_to :purchase
- belongs_to :user


