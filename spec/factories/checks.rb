FactoryBot.define do
  factory :check do
    site
    response_time {rand(999) + 1}
    status_code {[200, 400, 401, 500, 501].sample}
  end

  trait :with_success do
    status_code 200
  end

  trait :with_fail do
    status_code 500
  end

end
