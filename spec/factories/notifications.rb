# == Schema Information
#
# Table name: notifications
#
#  id             :uuid             not null, primary key
#  params         :jsonb
#  read_at        :datetime
#  recipient_type :string           not null
#  type           :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  recipient_id   :uuid             not null
#
# Indexes
#
#  index_notifications_on_read_at    (read_at)
#  index_notifications_on_recipient  (recipient_type,recipient_id)
#
FactoryBot.define do
  factory :notification do
    recipient { nil }
    type { "" }
    params { "" }
    read_at { "2023-01-05 15:36:06" }
  end
end
