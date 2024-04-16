class HomeController < ApplicationController
  def index
    user = {
      kind: 'user',
      key: 'userkey',
      email: 'user@example.com'
    }
    
    feature_flag_value = Rails.configuration.client.variation("test-ruby-flag", user, false)
    puts "Feature flag value: #{feature_flag_value}"
    
    if feature_flag_value == "Hi"
      @heading_text = "Hey look, I got it working! Feature flag says " + feature_flag_value 
      Rails.configuration.client.track("error", user)
    else
      @heading_text = "Welp, the feature flag is off, so... " + feature_flag_value
      Rails.configuration.client.track("error", user)
    end
    puts "@heading_text: #{@heading_text}"
  end
end