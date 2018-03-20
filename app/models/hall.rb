class Hall < ActiveRecord::Base
belongs_to :user
has_many :fields
end
