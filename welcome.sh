# Check if figlet is installed
if ! command -v figlet &> /dev/null; then
  # Install figlet if it's not available
  echo "Figlet is not installed. Installing..."
  sudo apt-get update && sudo apt-get install -y figlet
 else 
 echo ""
fi

# Check if cowsay is installed
if ! command -v cowsay &> /dev/null; then
  # Install cowsay if it's not available
  echo "Cowsay is not installed. Installing..."
  sudo apt-get update && sudo apt-get install -y cowsay
  else 
echo ""
fi

# Check if procps is installed (watch command)
if ! command -v watch &> /dev/null; then
  # Install procps if it's not available
  echo "Watch is not installed. Installing..."
  sudo apt-get update && sudo apt-get install -y procps
   else 
	echo ""
fi

function welcome() {
  figlet "Welcome $USER"
  watch -n1 "date '+%T' | figlet -f script -k"
  cowsay "....You can do it !!!.... "
}

welcome
