# == Schema Information
#
# Table name: languages
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Language < ActiveRecord::Base
 
  has_many :coachings
  has_many :users, through: :coachings

  # belongs_to :user
  # validates :user, presence: true
  validates :name, presence: true


end
