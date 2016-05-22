# == Schema Information
#
# Table name: coachings
#
#  id          :integer          not null, primary key
#  pupil_id    :integer
#  mentor_id   :integer
#  language_id :integer
#  accepted    :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CoachingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
