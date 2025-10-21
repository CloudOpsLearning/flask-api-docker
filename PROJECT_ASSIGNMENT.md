# DevOps Engineer Assignment: Containerizing a Flask REST API

## Scenario

You have just been hired by **TechLib Solutions**, a rapidly growing digital library platform startup, as a DevOps Engineer. The company has developed a Flask-based REST API for their online book catalog system called "VLib" (Virtual Library). 

The development team has built a robust API that handles book information management, but they need your expertise to containerize the application for better deployment, scalability, and consistency across different environments.

## Project Overview

TechLib Solutions has a Flask REST API that provides endpoints for:
- Retrieving all books in the catalog
- Searching for specific books by ID
- Adding new books to the catalog
- Deleting books from the catalog

The API is currently running locally on the development machines, but the company needs to deploy it to production servers and potentially scale it across multiple environments (development, staging, and production).

## Your Mission

As the newly hired DevOps Engineer, you are tasked with:

1. **Containerizing the Flask API** using Docker
2. **Creating a production-ready Dockerfile** that follows best practices
3. **Ensuring the application is secure and optimized** for production deployment
4. **Documenting the containerization process** for future team members

## Technical Requirements

### Current Application Structure
The Flask API (`app.py`) includes:
- A book catalog with sample data
- RESTful endpoints for CRUD operations
- Flask framework with JSON responses
- Python dependencies listed in `requirements.txt`

### Deliverables

1. **Create a Dockerfile** that:
   - Uses an appropriate base image
   - Installs Python and required dependencies
   - Copies the application code
   - Exposes the correct port (5000)
   - Runs the Flask application

2. **Optimize the Docker image** by:
   - Using multi-stage builds if beneficial
   - Minimizing image size
   - Following security best practices
   - Using non-root user when possible

3. **Create a `.dockerignore` file** to exclude unnecessary files

4. **Test the containerized application** to ensure it works correctly

5. **Document your approach** in a brief report explaining:
   - Why you chose specific base images
   - Any optimizations you implemented
   - How to build and run the container
   - Any challenges you encountered

## Getting Started

1. Clone or download the project files
2. Examine the Flask application (`app.py`) to understand its structure
3. Review the dependencies (`requirements.txt`)
4. Create your Dockerfile
5. Test your containerized application

## Testing Your Solution

Your containerized application should:
- Start successfully without errors
- Respond to HTTP requests on port 5000
- Serve the home page at `http://localhost:5000/`
- Provide API endpoints at `http://localhost:5000/api/v1/books/`

## Evaluation Criteria

Your solution will be evaluated on:
- **Functionality**: Does the containerized app work correctly?
- **Best Practices**: Does your Dockerfile follow Docker best practices?
- **Security**: Is the container secure (non-root user, minimal attack surface)?
- **Optimization**: Is the image size reasonable and build time efficient?
- **Documentation**: Is your approach well-documented and reproducible?

## Bonus Points

- Implement health checks in your Dockerfile
- Create a docker-compose.yml file for easy deployment
- Add environment variable support for configuration
- Implement proper logging configuration
- Use multi-stage builds for optimization

## Submission

Submit your solution including:
1. Your Dockerfile
2. .dockerignore file (if created)
3. Any additional configuration files
4. A brief report (1-2 pages) explaining your approach and decisions

## Timeline

This assignment should be completed within **3-5 days** of receiving the project files.

---

**Good luck!** Remember, as a DevOps Engineer, your goal is to make the application deployment-ready, secure, and maintainable. Think about how this container will be used in a production environment and what considerations are important for scalability and reliability.

## Questions?

If you have any questions about the requirements or need clarification on any aspect of the assignment, please reach out to your instructor.

---

*This assignment is designed to test your understanding of Docker containerization, Flask applications, and DevOps best practices. The skills you develop here will be directly applicable to real-world DevOps scenarios.*
