def create_user(overrides = {})
  User.create({email: "user@example.com", password: "password"}.merge(overrides))
end

def create_image(overrides = {})
  Image.create({url: "https://farm6.staticflickr.com/5519/9534542950_ce20799405.jpg",
               title: "20130524_LEM-81",
               keywords: "The north-facing view from Royal Arch. May 24th, 2013",
               caption: "The north-facing view from Royal Arch. May 24th, 2013"}.merge(overrides))
end