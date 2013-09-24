class User < ActiveRecord::Base
  attr_accessible :email, :name, :image, :provider, :uid

  validates :email, :name, :image, :provider, :uid, presence: true

  #looks on the db for a matching provider & uid, if nothing si found, will create new record
  def self.from_omniauth(auth_hash)
  	where(auth_hash.slice("provider", "uid")).first || create_from_omniauth(auth_hash)
  end

  def self.create_from_omniauth(auth_hash)
  	create! do |user|
  		user.name = auth_hash.info.name
  		user.email = auth_hash.info.email
  		user.image = auth_hash.info.image
  		user.provider = auth_hash.provider
  		user.uid = auth_hash.uid
  	end
  end
end
