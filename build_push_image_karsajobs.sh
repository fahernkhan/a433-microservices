# Build Docker image for backend
docker build -t fahernkhan/karsajobs:latest .

# Login to Docker Hub (or GitHub Package if using the second option)
echo $PASSWORD_DOCKER_HUB | docker login -u fahernkhan --password-stdin

# Push the Docker image to Docker Hub (or GitHub Package)
docker push fahernkhan/karsajobs:latest