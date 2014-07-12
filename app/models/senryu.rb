class Senryu < ActiveRecord::Base
  unloadable

  belongs_to :project
end
