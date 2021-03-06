# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  email              :string           not null
#  encrypted_password :string(128)      not null
#  confirmation_token :string(128)
#  remember_token     :string(128)      not null
#

class User < ApplicationRecord
  include Clearance::User

  has_one :profile

  after_create :create_profile

  def create_profile
    Profile.create(user: self)
  end
end
