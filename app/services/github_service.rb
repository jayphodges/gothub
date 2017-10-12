class GithubService

  def initialize
    @conn = Faraday.new(url: "https://api.github.com") do |faraday|
      faraday.headers["access_token"] = ENV['GITHUB_KEY']
      faraday.adapter  Faraday.default_adapter
    end
  end

  def user_info
    JSON.parse(@conn.get("/users/jayphodges").body)
  end

  def starred_repos

  end

end





# Authenticate with my github account
# View basic information about my account (profile pic, number of starred repos, followers, following)
# View a summary feed of my recent activity (recent commits)
# View a summary feed of recent activity from users whom I follow
# View a list of organizations I’m a member of
# View a list of my repositories
