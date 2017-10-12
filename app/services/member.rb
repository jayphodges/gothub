class Member
  attr_reader :profile_pic, :starred_url, :followers_url

  def initialize(attrs = {})
    @attrs = attrs
    @profile_pic = attrs[:avatar_url]
    @starred_url = attrs[:starred_url]
    @followers_url = attrs[:followers_url]
  end

  def name
    "#{attrs[:first_name] attrs[:last_name]}"
  end

  private

    attr_reader :attrs

end



# View basic information about my account (profile pic, number of starred repos, followers, following)
