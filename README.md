# Waypoint kubernetes sample
Sample Golang app to deploy to Kubernetes using Hashicorp Waypoint

## Prerequisites
* Install waypoint cli
```
brew tap hashicorp/tap
brew install hashicorp/tap/waypoint
waypoint version
```

* Install waypoint on Kubernetes
```
  waypoint install -platform=kubernetes -accept-tos
```

## Deploy and release the app to Kubernetes
* Clone this repo
```
git clone https://github.com/yharish991/waypoint-kubernetes
cd waypoint-kubernetes
```
* Run the init command to setup the project
```
waypoint init
```
* Edit waypoint.hcl file, change `YOUR_USER_NAME` to your docker hub user id

* Build, deploy and release the app to kubernetes
```
waypoint up
```
