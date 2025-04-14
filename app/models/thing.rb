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
end
