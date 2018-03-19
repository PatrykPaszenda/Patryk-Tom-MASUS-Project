class Group < ActiveRecord::Base
  groupify :group,members: [:users], default_members: :users

  has_many :members
  has_many :groups
end

class Member < ApplicationRecord
    belongs_to :group
    belongs_to :user
end
