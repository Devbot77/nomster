FactoryGirl.define do
	factory :user do
		sequence :email do |n|
			"devtester#{n}@gmail.com"
		end
		password 'skolvikings'
		password_confirmation 'skolvikings'
	end

	factory :place do
		name 'Bob Burgers'
		address '1532 34th Ave South, Moorhead MN 56560'
		description 'crap food'
		association :user
	end

	factory :comment do
		message 'ah gross man'
		rating '1_star'
	end
end