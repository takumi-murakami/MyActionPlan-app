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
| address                | string     | null: false                    |
| date                   | date       | null: false                    |
| begin_at               | time       | null: false                    |
| closed_at              | time       | null: false                    |
| user                   | references | null: false, foreign_key: true |

- belongs_to :user
<!-- - belongs_to :room -->

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