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
