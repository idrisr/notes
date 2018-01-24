# Provision Profiles

## AdHoc
* Name and UUID
* Supports all devices
* Bound to a single distribution certificate
* When app signed with AdHoc provisioning profile is deployed on device it requests additional permissions to launch the app
* Application identifier
* Team ID
* Expiration date

* An Adhoc provision profile also uses a distribution certificate but it is
usually used for sending in-production versions of the app to multiple users for
testing, or simply for doing in-house Adhoc distribution within a company. Apps
that are built with an Adhoc provisioning profile can only run in devices whose
UDIDs were added to the provisioning profile during the profile creation
process.

## what do they do
A provisioning profile is a
* collection of digital entities that uniquely ties developers and devices to an authorized iPhone Development Team
* and can enable a device to be used for testing.
* A Development Provisioning Profile must be installed on each device on which you wish to run your application code.
* Each Development Provisioning Profile will contain a set of
  * iPhone Development Certificates,
  * Unique Device Identifiers and an
  * App ID.

Devices specified within
the provisioning profile can be used for testing only by those individuals whose
iPhone Development Certificates are included in the profile. A single device can
contain multiple provisioning profiles.

## Development
* Name and UUID
* App identifier
* Signing entitlements (specifying extended range of native capabilities such as push notifications)
* Device UDIDs that apps signed with this provisioning profile can be deployed to
* Development code signing certificates that can be used to sign with this certificate
* Team ID
* Expiration date

## Distribution
* Name and UUID
* Can not deploy to device but rather upload to the App Store
* Bound to a single distribution certificate
* App identifier
* Team ID
* Expiration date

# Signing

## Automatic

## Manual
