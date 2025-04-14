# == Schema Information
#
# Table name: things
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Thing < ApplicationRecord
  validates :name, presence: true

  after_create_commit -> { broadcast_refresh_to "things" }
  after_update_commit -> { broadcast_refresh_to self }
  after_destroy_commit -> { broadcast_refresh_to self }
end
