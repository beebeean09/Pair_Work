# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  title      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  validates :user_id, presence: true

  belongs_to :author,
    class_name: "User",
    primary_key: :id,
    foreign_key: :user_id

  has_many :questions,
    class_name: "Question",
    primary_key: :id,
    foreign_key: :poll_id

end
