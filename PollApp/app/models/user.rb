# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true

  has_many :authored_polls,
    class_name: "Poll",
    primary_key: :id,
    foreign_key: :user_id

  has_many :responses,
    class_name: "Response",
    primary_key: :id,
    foreign_key: :author_id

end
