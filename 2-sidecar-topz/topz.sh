# Run the application
docker run -d --name books books

# Get the container's id
id=$(docker ps --filter name=books --format {{.ID}})

# Run the topz sidecar
docker run --pid=container:$id -p 8080:8080 brendanbur/topz:db0fa58 /server -addr=0.0.0.0:8080

