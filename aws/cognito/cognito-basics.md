# Cognito

## tl;dr
* an identity pool have user pool(s) attached
* identity pool has a different role for auth and unauth users
* that role has policies

* two main components of Amazon Cognito
1. `user pool`s
1. `identity pool`s

## `user pool`
* `user pool` is a user directory in Amazon Cognito.
* users can sign in to your web or mobile app through Amazon Cognito
* users can sign in through social identity providers like Facebook or Amazon
* and through SAML identity providers
* all members of the user pool have a directory profile that you can access through an SDK

* authenticatie a user, 
* Amazon Cognito issues JSON web tokens (JWT) 
* used to secure and authorize access to your own APIs, or exchange for AWS credentials.

## `identity pool`
* provide AWS credentials to grant your users access to other AWS services.
* To enable users in your `user pool` to access AWS resources, you can configure an `identity pool` to exchange `user pool` tokens for AWS credentials.

