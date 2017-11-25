# Cognito Live Coding

* building a serverless app
* from [here](https://www.youtube.com/watch?v=TowcW1aTDqE)

# other resources
* aws re-invent MBL306
* aws re-invent MBL310
* spacefinder reference app

## user pools

* lambda functions to customize each step
* three tokens when authorized from cognito
* can have several apps connecting to cognito server pool
* triggers - lambda functions you can trigger at different steps

## `pool-id`
how the client will reference the pool

## `arn`
amazon reference name, whatever that is

## app client id
which apps should be able to access this


- integrating user pools iOS?

## Registering a new user
- create Cognito User Pool object
- provide userpoolid
- and clientid
- and sign up using username, password, attribute list, and validation data
- see video @ 45:21
- without registering user not much you can do
- sign up to user pool with username, password, and attribute list
- client secret?

## Confimation Flow
- confirmation code

## authenticate user and start user session
- accessToken
- idToken
- refreshToken
- token [info](http://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-tokens-with-identity-providers.html)

continue at 1:34
