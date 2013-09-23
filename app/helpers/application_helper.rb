module ApplicationHelper
	def t(title=nil)
		content_for :title do
			"Maokai | #{title}"
		end
	end

	def g(email, klazz, options={})
		gravatar_image_tag(email, class:klazz, gravatar: options)
	end
end
