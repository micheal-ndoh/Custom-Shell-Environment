# Step 1: Install Multipass (if not already installed)
if ! command -v multipass &> /dev/null; then
    echo "Installing Multipass..."
    sudo snap install multipass
else
    echo "Multipass is already installed."
fi

# Step 2: Launch a Multipass instance (Ubuntu)
INSTANCE_NAME="docker-instance"
echo "Launching Multipass instance: $INSTANCE_NAME..."
multipass launch --name $INSTANCE_NAME 

# Step 3: Install Docker inside the Multipass instance
echo "Installing Docker inside the Multipass instance..."
multipass exec $INSTANCE_NAME -- bash -c "sudo apt update && sudo apt install -y docker.io"

docker build -t ubuntu_test 
docker run -dit --name ubuntu_test --cpus=2 --memory=2g --memory-swap=2g ubuntu_test
