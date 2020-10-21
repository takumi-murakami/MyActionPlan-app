# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| birthday           | date    | null: false |

- has_many :plans
<!-- - has_many :rooms, through: :room_users -->

## plans テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| title                  | string     | null: false                    |
| text                   | text       | null: false                    |
| genre_id               | integer    | null: false                    |
| prefecture_id          | integer    | null: false                    |
| action_date            | date       | null: false                    |
| user                   | references | null: false, foreign_key: true |

- belongs_to :user
- has_one :address
<!-- - belongs_to :room -->

## addresses テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| postal_code    | string     | null: false                    |
| prefecture_id  | integer    | null: false                    |
| city_name      | string     | null: false                    |
| block_name     | string     | null: false                    |
| building_name  | string     |                                |
| plan           | references | null: false, foreign_key: true |

- belongs_to :plan

<!-- 以下追加実装 -->
## rooms テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| name           | string     | null: false                    |

- has_many :room_users
- has_many :users, through: :room_users
- has_many :plans

## room_users テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| user                   | references | null: false, foreign_key: true |
| room                   | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :room