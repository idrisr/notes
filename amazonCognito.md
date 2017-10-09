# Amazon Cognito

* Give you login and all that bullshit work and sync as well. *

Amazon Cognito lets you easily add user sign-up and sign-in and manage permissions for your mobile and web apps. You can create your own user directory within Amazon Cognito. You can also choose to authenticate users through social identity providers such as Facebook, Twitter, or Amazon; with SAML identity solutions; or by using your own identity system. In addition, Amazon Cognito enables you to save data locally on users' devices, allowing your applications to work even when the devices are offline. You can then synchronize data across users' devices so that their app experience remains consistent regardless of the device they use.

## Identity Pools

An identity in a pool gets access to the AWS resources used by your app by being assigned a role in AWS Identity and Access Management (IAM). The access level of an IAM role is defined by the policy that is attached to it. Typical roles for identity pools allow you to give different levels of access to authenticated (Auth)or signed in users, and unauthenticated (Unauth)users.

## Identity and Access Management (IAM)

* users, groups, permissions to access to EC2 resources
* who can launch an instance
* logs on API activity
* standards based federation policy
* access keys rotation

## AWS Credentials

## SDK

## Setup Step

1. Create an identity pool and roles
2. Add the AWS SDK for iOS to your project
3. Import AWScore and Amazon Cognito APIs
4. Initialize the Amazon Cognito credentials provider
5. Retrieve Amazon Cognito IDs and AWS Credentials

## API Gateway

## Data Sync
sync user's data across devices, like when they upgrade their phone

## Cognito Identity
* userpool - gives you sig-up and sign-in
* federated identities - use identity where a different service does the sign-up and sign-in. like google, facebook, Active Directory

![cognito](https://i.imgur.com/MAA7JdD.png)

## Refresh token

The idea of refresh tokens is that if an access token is compromised, because it is short-lived, the attacker has a limited window in which to abuse it.


### API Docs

from [here](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/cognito-user-identity-pools-apiref.pdf#CommonParameters)

* admin
* attributes
* confirmation code
* device
* device
* global
* group
* identity provider
* import job
* initiate auth
* list
* password
* resource server
* sign-out
* signup
* ui customization
* update
* user
* user pool
* user pool domain
