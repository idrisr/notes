# iOS Security 705

## Secure Boot
* built from silicon up
* Boot Rom holds apple's public key and is written in the factory and can't be written after that
* boot rom uses public key to verify next step in load, the Low-Level Bootloader (LLB)
* boot rom -> LLB -> iBoot -> Kernel -> iOS
* does not rely on any Certificate Authority
* the authorization and update server can deny an iOS device from going to lower less secure version

## Data Protection
* dont want to make the keys that encrypt user data at rest available to user space processes
* hold the keys in the secure enclave ("SEP")
* take the user's passcode, and entangle it with a hardware key in SEP
* therefore not possible to guess passcodes offline
* after 10 incorrect guesses you can't try again

## Sandboxing
* isolate data between apps
*  

## Code Signing
* ios will compare the crypto hash of every page in memory against the code submitted to the app store

## Touch ID
* connects straight to secure enclave via encrypted link
