module ApplicationHelper
	def t(title=nil)
		content_for :title do
			"Maokai | #{title}"
		end
	end
end
