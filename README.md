#　テーブル設計

## usersテーブル

| Column             | Type    | Options      |
| ------------------ | ------- | ------------ |
| name               | string  | null: false  |
| email              | string  | unique: true |
| encrypted_password | string  | null: false  |
| nickname           | string  | null: false  |
| birthday           | integer | null: false  |
 
## Association
- has_many :product_users
- has_many :users, through: :product_users
- has_many :purchases


## productsテーブル

| Column | Type        | Options                        |
| ------ | ----------- | ------------------------------ |
| name   | string      | null: false                    |
| price  | integer     | null: false                    |
| text   | text        | null: false                    |
| user   | references  | null: false, foreign_key: true |
| image  | string      |                                |

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
- has_one :product
- belongs_to :user


## deliveriesテーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| purchase       | references | null: false, foreign_key: true |
| street address | text       | null: false                    | 

## Association
- belongs_to :purchase
- belongs_to :user