# Ruby Repro Setup 

- Update the SDK key in `/config/initializers/launchdarkly.rb`
- Create feature flag called `test-ruby-flag` as a boolean 
- Create an error rate metric with the event key of `error`
- Observe feature flag config in `/app/controllers/home_controller.rb`
- Note the presence of the `Context` and the `.track` method using the correct properties
- Run `bundle install` 
- Run `rails server` 
- Win - navigate to [https://localhost:3000](https://localhost:3000)