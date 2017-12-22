# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  link       :string
#

class Location < ApplicationRecord
  has_many :events

  def to_s
    name
  end

end
