class Coaching < ActiveRecord::Base
  belongs_to :pupil, class_name: User.name
  belongs_to :mentor, class_name: User.name
  belongs_to :language
  attr_accessor :mentor_email
end
