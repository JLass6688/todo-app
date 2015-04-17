require 'bundler'
Bundler.require()


class Todo < ActiveRecord::Base

	def to_s
		self.name
	end

end