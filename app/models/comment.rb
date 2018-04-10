class Comment < ActiveRecord::Base
  belongs_to :hall
  belongs_to :user
end
