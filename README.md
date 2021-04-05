# テーブル設計
## categories テーブル
| Column   | Type   |  Options                  |
| -------- | ------ | ------------------------- |
| name     | string | null: false, unique: true |

### Association
- has_many :ideas

## ideas テーブル
| Column   | Type       |  Options          |
| -------- | ---------- | ----------------- |
| category | references | foreign_key: true |
| body     | text       | null: false       |

### Association
- belongs_to :categories