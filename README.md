#　テーブル設計

## usersテーブル

| Column             | Type    | Options      |
| ------------------ | ------- | ------------ |
| name               | string  | null: false  |
| email              | string  | unique: true |
| encrypted_password | string  | null: false  |
| nickname           | string  | null: false  |
| birthday           | integer | null: false  |
| full_name          | string  | null: false  |
| full_name_kana     | string  | null: false  |
| last_name          | string  | null: false  |
| last_name_kana     | string  | null: false  |
 
## Association
- has_many :product_users
- has_many :products

## productsテーブル

| Column            | Type        | Options                        |
| ----------------- | ----------- | ------------------------------ |
| name              | string      | null: false                    |
| price             | integer     | null: false                    |
| text              | text        | null: false                    |
| user              | references  | null: false, foreign_key: true |
| product_condition | text        | null: false                    |
| shipping_charges  | integer     | null: false                    |
| shipping_area     | string      | null: false                    |
| days_to_ship      | integer     | null: false                    |
| category          | string      | null: false                    |

## Association
- has_many :purchase_users
- has_many :users, through: :purchase_users
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
| street address   | text       | null: false                    | 
| card_information | integer    | null: false                    |
| expiration_date  | integer    | null: false                    |
| security_code    | integer    | null: false                    |

## Association
- belongs_to :purchase
- belongs_to :user