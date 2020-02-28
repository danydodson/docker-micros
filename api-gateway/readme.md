# Listing Service

Create the following files

### .deploy.env
~~~sh
APPLICATION_NAME=listings-service
AWS_ACCESS_KEY_ID=
AWS_ACCESS_KEY_SECRET=
CODEDEPLOY_DEPLOYMENT_GROUP_NAME=dev
~~~

### .production.env
~~~sh
LISTINGS_SERVICE_URI=http://10.0.1.5
USERS_SERVICE_URI=http://10.0.1.6
~~~