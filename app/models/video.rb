class Video < ActiveRecord::Base
  acts_as_taggable_on :videos
end
