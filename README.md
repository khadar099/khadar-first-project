Step 1: Create a Dockerfile
Create a new file named Dockerfile in the root directory of your project.
Step 2: Write the Dockerfile
Here's a basic Dockerfile for your Java application:

dockerfile

# Use a base image that includes OpenJDK
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY my-java-project-1.0-SNAPSHOT.jar app.jar

# Expose the port your application will run on
EXPOSE 8080

# Define the command to run your application
ENTRYPOINT ["java", "-jar", "app.jar"]

**Explanation of Each Line**
FROM openjdk:17-jdk-slim:

This line specifies the base image to use. We're using a lightweight version of OpenJDK 17. This image contains the JDK required to run Java applications.
WORKDIR /app:

This sets the working directory inside the Docker container to /app. All subsequent commands will be run in this directory.
COPY my-java-project-1.0-SNAPSHOT.jar app.jar:

This command copies your built JAR file from your local machine into the container. The JAR file will be renamed to app.jar within the container.
EXPOSE 8080:

This informs Docker that the container will listen on port 8080 at runtime. Adjust this port if your application uses a different one.
ENTRYPOINT ["java", "-jar", "app.jar"]:

This defines the command that will run when the container starts. Here, we use the java -jar app.jar command to start your application.
Step 3: Build the Docker Image
Now that you have your Dockerfile set up, you can build your Docker image:

**Open a terminal and navigate to the directory containing your Dockerfile and JAR file.**

**Run the following command to build your Docker image:**

docker build -t my-java-app .
Here, my-java-app is the name you’re giving to your Docker image. The . at the end indicates the current directory as the build context.
Step 4: Run the Docker Container
After building the image, you can run a container from it:

docker run -p 8080:8080 my-java-app
The -p 8080:8080 option maps port 8080 of your host machine to port 8080 of the container, allowing you to access the application from your local machine.
Step 5: Verify the Application
Open a web browser or a tool like curl or Postman.
Access the application at http://localhost:8080 (or the appropriate URL based on your application).
