Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, "541531685915523", "fcbd3136bc849e1845daeba161be8258"
end
