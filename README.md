# Comm-IT-project
Comm-IT project with Yael

serverless architecture
-----------------------
A serverless architecture is a way to build and run applications and services without having to manage infrastructure. Your application still runs on servers, but all the server management is done by AWS. You no longer have to provision, scale, and maintain servers to run your applications, databases, and storage systems. Learn more about serverless computing here.

AWS offers technologies for running code, managing data, and integrating applications, all without managing servers. Serverless technologies feature automatic scaling, built-in high availability, and a pay-for-use billing model to increase agility and optimize costs. These technologies also eliminate infrastructure management tasks like capacity provisioning and patching, so you can focus on writing code that serves your customers. Serverless applications start with AWS Lambda, an event-driven compute service natively integrated with over 200 AWS services and software as a service (SaaS) applications.

project explanation:
-------------------
AWS API Gateway is a managed service which allows you to manage your API. It has many features available like creating the API, publishing it, securing it, versioning it, etc. 
AWS Cognito allows you to add authentication to your API.
after the authentication the user details will be save in DB (dynamoDB) and in S3 bucket.(by 2 lambda).
the user name will save in the parameter store (data from DynamoDB)-by Lambda
the end of the prosses -the user will receive "hello" messege and name of the user in new web page.(Lambda connect to the Rest API) 

services that used in the project:
-----------
Cognito-

User Registration-User enters email, username and password and registers with the User Pool.
User Verification-AWS Cognito User Pool will send verification code by email or sms and the user enters the code to get verified with the User Pool.
User Login-User enters username and password and logs in with Cognito User Pool in which case a token will be provided by Cognito upon successful login.
Get Temporary Credentials-Cognito Identity Pool will provide temporary credentials to AWS resources using the token that was recieved on successful login.
User Authorization-Cognito will authorize the user with necessary permissions with IAM role.
AWS Resource Management-Authorized user will now have the ability to manage AWS resources according to the permissions given by AWS IAM.

API gateway-
An API Gateway REST API is made up of resources and methods. A resource is a logical entity that an app can access through a resource path. A method corresponds to a REST API request that is submitted by the user of your API and the response returned to the user.

DynamoDB-
Amazon DynamoDB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability.

S3 bucket-
A bucket is a container for objects stored in Amazon S3.

parameter store-
Parameter Store, a capability of AWS Systems Manager, provides secure, hierarchical storage for configuration data management and secrets management. You can store data such as passwords, database strings, Amazon Machine Image (AMI) IDs, and license codes as parameter values. You can store values as plain text or encrypted data.

Lambda-
AWS Lambda is a serverless compute service that runs your code in response to events and automatically manages the underlying compute resources for you. These events may include changes in state or an update, such as a user placing an item in a shopping cart on an ecommerce website.


