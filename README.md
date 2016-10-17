# IBM Cloud Architecture - Microservices Reference Application for Netflix OSS

## Netflix OSS on Bluemix - Hystrix Circuit Breaker and Turbine Stream Aggregation

#### Description
  TBD

#### Parent Reference Application
  **This project is part of the [IBM Cloud Architecture - Microservices Reference Application for Netflix OSS](https://github.com/ibm-cloud-architecture/refarch-cloudnative-netflix*) suite.**

  For full reference application overviews and deployment guidance, please refer to the root repository above.  The overall project consists of multiple sub projects:

  - Standard Netflix OSS-based microservice architecture components, like Eureka and Zuul
  - Sample Spring Boot applications which provide a REST API and communication between each other.
  - Deployment pipeline and automation guidance

The **Microservices Reference Application for Netflix OSS** is maintained by the IBM Cloud Lab Services and [Cloud Solution Engineering](https://github.com/ibm-cloud-architecture) teams.

#### Application Architecture
 TBD

#### APIs in this application:
 TBD

#### Pre-requisites:
- Install Java JDK 1.8 and ensure it is available in your PATH
- _(Optional)_ A local Docker instance (either native or docker-machine based) running on localhost to host container(s). [Click for instructions](https://docs.docker.com/machine/get-started/).
- _(Optional)_ Apache Maven is used for an alternate build system.  [Click for instructions](https://maven.apache.org/install.html).

#### Build the Application Component
1.  Build the application.  A utility script is provided to easily build using either Gradle (default) or Maven.  You can optionally specify the `-d` parameter to build the associated Docker image as well.  The default Gradle build instructions use a Gradle wrapper requiring no further installation.  The Maven build instructions require Maven to be installed locally.

    1.1 Build the application using Gradle:
      ```
      ./build-microservice.sh [-d]
      ```

    1.1 Build the application using Maven:
      ```
      ./build-microservice.sh -m [-d]
      ```

#### Run the Application Component Locally
1.  You will need a local [Eureka](https://github.com/ibm-cloud-architecture/refarch-cloudnative-netflix-eureka) application instance running to connect to, from which Zuul will proxy requests to additional service instances.

2.  You can now run either the JAR file or the Docker image locally.  

    1.1.  To run the JAR file locally, you can simply pass parameters to the Java command in the command prompt:  
        `java -jar docker/app.jar`  
    1.2.  To run the Docker file locally, you can pass the same parameters to start the local Docker image:  
        `docker run -p 8080:8080 netflix-turbine:latest`  

3.  Verify there is a Turbine Server service visible in your Eureka Dashboard at `http://localhost:8761/`.

#### Run the Application Component on Bluemix
 TBD

#### Validate the Application Component Deployment
 TBD
