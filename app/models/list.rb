class List < ActiveRecord::Base

require "rails_helper"
require 'shoulda/matchers'

class List < ActiveRecord::Base

   validates_presence_of :name
   validates_length_of :name, maximum: 50
end

describe List do

  it { should validate_presence_of(:name) }

  it { should ensure_length_of(:name).is_at_most(50)}

end

end