# == Schema Information
#
# Table name: responses
#
#  id         :integer          not null, primary key
#  answer_id  :integer
#  author_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ActiveRecord::Base
  validates :answer_id, :author_id, presence: true

  belongs_to :answer_choice,
    class_name: "AnswerChoice",
    primary_key: :id,
    foreign_key: :answer_id

  has_one :respondent,
    class_name: "User",
    primary_key: :id,
    foreign_key: :author_id
end
