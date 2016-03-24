class List < ActiveRecord::Base
  belongs_to :user
  has_many :tasks

  enum visibility: [ :only_me, :everyone ]

  validates :description, presence: true

end
