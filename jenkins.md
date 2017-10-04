## Jenkins Install

1. install via dmg
2. move `org.jenkins-ci.plist` from `/Library/LaunchDaemons` to `~/Library/LaunchAgents`
3. change persmisisons of plist 

		jenkins@jenkins-singularity-OSX ~/Library/LaunchAgents $ sudo chown root org.jenkins-ci.plist
		jenkins@jenkins-singularity-OSX ~/Library/LaunchAgents $ sudo chgrp wheel org.jenkins-ci.plist
		jenkins@jenkins-singularity-OSX ~/Library/LaunchAgents $ sudo chmod o-w org.jenkins-ci.plist
		
4. start/stop service
 
		jenkins@jenkins-singularity-OSX ~/Library/LaunchAgents $ sudo launchctl unload org.jenkins-ci.plist
		jenkins@jenkins-singularity-OSX ~/Library/LaunchAgents $ sudo launchctl load org.jenkins-ci.plist
		
5. restart machine
6. double click java war file ?? `jenkins@jenkins-singularity-OSX /Applications/Jenkins $ ls
jenkins.war`

0. install JDK somewhere along the line

0. setup ssh. publickey only

## Jenkins Configure

1. plugins...

## Machine configure

`brew, pod, fastlane`, etc

### Hella links

* [jenkins mac wiki](https://wiki.jenkins-ci.org/display/JENKINS/Thanks+for+using+OSX+Installer)

* [setting it up on a mac](http://www.cimgf.com/2015/05/26/setting-up-jenkins-ci-on-a-mac-2/)

* [jenkins slave](https://blog.samsao.co/how-to-setup-a-jenkins-slave-running-mac-os-x-for-ios-projects-part-1-2937502ce90b#.xcziorjl4)

* [CI ios jenkins](http://savvyapps.com/blog/continuous-integration-ios-jenkins)

* [installing] (https://nickcharlton.net/posts/installing-jenkins-osx-yosemite.html)

* [pivotal] (https://blog.pivotal.io/labs/labs/ios-ci-jenkins)

### jenkins user creation
~~mostly like this [here](http://smallbusiness.chron.com/add-user-terminal-mac-os-x-screen-sharing-31846.html)~~

mostly like the easy way:
`system preferences -> new user -> admin -> auto login`

### JDK
* install jdk
[how to](http://mgrebenets.github.io/mobile%20ci/2015/02/15/install-java-on-mac-os-x)
* download [jdk](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
	* downloaded 8u111 and 8u112

### errata

[Launch agents vs daemons](http://mgrebenets.github.io/mobile%20ci/2015/02/01/mobile-ci-daemon-vs-agent)




