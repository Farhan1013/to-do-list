class Item < ActiveRecord::Base

	require "rails_helper"
	require 'shoulda/matchers'

	class Item < ActiveRecord::Base

   validates_presence_of :name
   validates_length_of :name, maximum: 50
end

	describe Item do

	it { should validate_presence_of(:name) }

	it { should ensure_length_of(:name).is_at_most(50)}

end

end