## DavidOauth2

  A simple attempt to recreate and simulate an OAuth2 Server (ID/Secret) and its clients' access with Rails 5 and Doorkeeper Gem.

## DoorKeeper

  - The main core of this demo is the usage of this gem [DoorKeeper](https://github.com/doorkeeper-gem/doorkeeper)

## Endpoints

  `/api/courses` just returns a title and description combo for dummy courses.

   Doorkeeper should protect this endpoint and should be accessed with a valid `access_token`

## Emulating Clients

  For this personal demo, I used a gem called `oauth2` (`gem 'oauth2'`), which helps to simulate clients without any concerns about any type (web, mobile or even a desktop)

  A pretty simple way of interacting with it is with Ruby IRB, so:

  ```
  # creating a client
  client = OAuth2::Client.new(app_id, secret, site: "http://localhost:3000")

  # getting access token with your current user and password
  token = client.password.get_token('user', 'password')

  # printing the Token
  puts token.token.token

  # refresh token? yep
  puts token.refresh_token

  # accessing via IRB
  token.get('api/courses').parsed

  ```

  A Browser Way:

  `http://localhost:3000/[api/courses]?access_token=[your_access_token]`

  Much of this information is on the official repos and README file of the DoorKeeper Gem, it's pretty good explained.

## Credits
[David Lares S](https://davidlares.com)

## License
[MIT](https://opensource.org/licenses/MIT)
