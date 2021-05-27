#　テーブル設計

## usersテーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

## Association
- has_many :product_users
- has_many :users, through: :product_users
- has_many :purchases


## productsテーブル

| Column | Type       | Options                        |
| ------ | -----------| ------------------------------ |
| name   | string     | null: false                    |
| price  | string     | null: false                    |
| text   | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

## Association
- has_many :purchase_users
- has_many :users, through: :purchase_users
- has_many :deliveries


## purchasesテーブル

| Column   | Type       | Options                         |
| -------- | ---------- | ------------------------------- |
| user     | references | null: false, foreign_key: true  |
| products | references | null: false, foreign_key: true  |

## Association
- has_one :delivery
- has_one :product
- belongs_to :user


## deliveriesテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| purchases | references | null: false, foreign_key: true |

## Association
- belongs_to :purchase
- belongs_to :user