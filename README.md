This is our Docker base image for Ruby-powered web services.

It assumes the following things about your Ruby application:

 * It is Rack based, with a well-formed config.ru at the root of your repository; and
 * it has three configurations: `development`, `test`, and `production`.

It also assumes that you will standup containers with the following enviornment:

 * `RACK_ENV` is set to one of the aforementioned configurations.
