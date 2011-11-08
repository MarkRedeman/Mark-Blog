module ApplicationHelper
	Slogans = ['Stay simple, be efficient.',
				"You can't be late until you show up"
			]

	def get_slogan
		Slogans[rand(Slogans.size)]
	end
end
