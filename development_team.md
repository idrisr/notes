
from [here](https://developer.apple.com/library/content/documentation/IDEs/Conceptual/AppDistributionGuide/ManagingYourTeam/ManagingYourTeam.html)

# Managing Your Developer Account Team

If you have an organization membership in the Apple Developer Program, you can add people to your team and assign them roles, thereby granting them levels of access to team assets. Team members have roles and privileges that pertain to the development and distribution process. These roles define who is allowed to enable certain app services, who is allowed to create identifiers, who is allowed to create distribution assets, and so on. After adding team members, you may be responsible for performing other tasks on their behalf. For example, you may need to enable capabilities for the App ID and create client SSL certificates for APNs, Pass Type IDs, and iCloud containers. If you’re enrolled in the Apple Developer Program as an individual, team management tasks described in this chapter don’t apply.

# Team Roles

## Team agent

A team agent is legally responsible for the team and acts as the initial primary contact with Apple. The team agent can invite team members and change the access level of any other team member. There’s only one team agent.

## Team admin
A team admin can set the privilege levels of other team members, except the team agent. Team admins manage all assets used to sign your apps, either during development or when your team is ready to distribute an app. Team admins can edit the App ID to enable app services and create technology specific identifiers used throughout the system. Team admins can sign apps for distribution on nondevelopment devices.

## Team member
A team member can create their development certificate, register a device connected to their Mac, and create a team provisioning profile using Xcode. Team members can’t register devices and create development provisioning profiles using their developer account.
