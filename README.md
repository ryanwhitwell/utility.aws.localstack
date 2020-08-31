# AWS Localstack Wrapper

This is a wrapper for the localstack project on GitHub that allows developers to stand up and provision a mock collection of AWS services on their local machine.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

To get started please clone the repository located [here](https://github.com/ryanwhitwell/utility.aws.localstack.git).


You'll likely want to familiarize yourself with the features of the [localstack project](https://github.com/localstack/localstack).


### Prerequisites

Please install the following products on your local machine:

- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Node JS](https://nodejs.org/en/download/)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)


### Installing

#### 1. Follow these steps to get https://github.com/ryanwhitwell/utility.aws.localstack.git working on your local development machine.
*Please use your command shell of choice.*

  1. Navigate to the directory where AWS Localstack Wrapper located
  
  2. Ensure Docker is running
      ```
      docker system info
      ```
  3. Build the AWS Localstack Wrapper image
      ```
      docker-compose build
      ```
  4. Run the image
      ```
      docker-compose up
      ```


#### 2. Follow these steps to appropriately stop AWS Localstack Wrapper on your local development machine.
*Please use your command shell of choice.*

  1. Navigate to the directory where AWS Localstack Wrapper located
  
  2. Terminate the AWS Localstack Wrapper process by pressing the escape sequence in your command shell `Ctrl+C` for **Windows**.
  
  3. Stop the Docker container
      ```
      docker-compose down
      ```


#### 3. Accessing items in AWS Localstack Wrapper
1. Use the AWS CLI to access your provisioned items. Click for additional information about how to use the [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/).
2. You can always extend this wrapper to support new provisioning workflows for your projects. Just add more "services" like the MyProduct example I've provided.

## Built With

* [Localstack](https://github.com/localstack/localstack) - AWS cloud stack
* [Localstack/awscli-local](https://github.com/localstack/awscli-local) - Wrapper for AWS CLI
* [Node JS](https://nodejs.org) - Runtime
* [Docker](https://www.docker.com/) - Containerization

## Contributing

Please feel free to fork or branch off of `master` at any time as needed.

## Authors

* **Ryan Whitwell** - [Email](mailto:ryanwhitwell.developer@gmail.com)

## Licenses
[MIT](LICENSE.txt)

## Acknowledgments

* Thanks to all the [contributors](https://github.com/localstack/localstack/graphs/contributors) at localstack
