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
  has_many :pupils, through: :coachings, source: :pupil
  
  has_many :mentors,through: :coachings, source: :mentor 

  has_many :pending_pupil_coachings, ->{ where(accepted: false)}, class_name: Coaching.name 
  has_many :accepted_pupil_coachings, ->{ where(accepted: true)}, class_name: Coaching.name 
  has_many :accepted_mentor_coachings, ->{ where(accepted: true)}, class_name: Coaching.name
 
  validates :name, presence: true


end
