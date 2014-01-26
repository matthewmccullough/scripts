#Ensure we have the quantity specified on the CLI
if [ -z "$1" ]; then ARG_ERR=ERR; fi
if [ -n "$ARG_ERR" ];
then
    echo "Usage: git.nr <newreponame>"
    exit
fi

# Create a new git repo with one README commit and CD into it
mkdir $1
cd $1
git init
touch README
git add README
git commit -m"First commit"
