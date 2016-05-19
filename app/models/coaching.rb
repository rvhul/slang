class Coaching < ActiveRecord::Base
  belongs_to :pupil
  belongs_to :mentor
  belongs_to :language
  attr_accessor :mentor_email
end
