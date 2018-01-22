# `fastlane match`

from [here](https://docs.fastlane.tools/actions/match/)

## summary
* basically it helps you sync your certs and provisioning profile. you setup a
private git repo which stores those things, and then download them when needed
to do your builds, so it should work across machines and people.

## what `match` does


* 🔄	Automatically sync your iOS keys and profiles across all your team members using git
* 📦	Handle all the heavy lifting of creating and storing your certificates and profiles
* 💻	Setup codesigning on a new machine in under a minute
* 🎯	Designed to work with apps with multiple targets and bundle identifiers
* 🔒	You have full control over your files and Git repo, no third party service involved
* ✨	Provisioning profile will always match the correct certificate
* 💥	Easily reset your existing profiles and certificates if your current account has expired or invalid profiles
* ♻️	Automatically renew your provisioning profiles to include all your devices using the --force option
* 👥	Support for multiple Apple accounts and multiple teams
* ✨	Tightly integrated with fastlane to work seamlessly with gym and other build tools
