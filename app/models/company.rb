class Company < ActiveRecord::Base
  paginates_per 15
end
