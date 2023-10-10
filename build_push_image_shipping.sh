# Build Docker image for frontend
docker build -t fahernkhan/shipping-service:latest .

# Login to Docker Hub (or GitHub Package if using the second option)
echo $PASSWORD_DOCKER_HUB | docker login -u fahernkhan --password-stdin

# Push the Docker image to Docker Hub 
docker push fahernkhan/shipping-service:latest