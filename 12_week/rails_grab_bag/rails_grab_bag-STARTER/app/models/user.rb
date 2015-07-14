class User < ActiveRecord::Base
	include FriendlyId
	friendly_id :username

	scope :nearby, ->(user, distance) {near(user, distance).where.not(id: user)}
	#User.nearby(user, distance)
	
	geocoded_by :full_address
	after_validation :geocode
	after_validation :set_avatar_url
	
	has_secure_password
	
	validates :first_name, :last_name, :email, presence: true
	validates :username, presence: true, uniqueness: {case_sensitive: false}
	
	def full_address
	"#{street_address}, #{city}, #{state}, #{zip}"
	end

	def set_avatar_url
		self.avatar_url || self.avatar_url = Faker::Avatar.image
	end

	def send_welcome_text
		client = Twilio::REST::Client.new(Figaro.env.twilio_account_sid, Figaro.env.twilio_auth_token)

		client.messages.create(
			from: "+18315081198",
			to: "+16508230306",
			body: "Hi, #{self.first_name}! Thanks for signing up. You're going to love this baller app!",
			media_url: self.avatar_url
			)
	end

end
