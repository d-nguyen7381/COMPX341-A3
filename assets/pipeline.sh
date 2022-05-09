# check if a commit message is supplied
if [ $# -eq 0 ]
    then
    echo "No commit message supplied"
    sleep 5
    exit
fi

# run npm install
echo "Running npm install"
npm install

# run npm run build, exits if build fails
echo "Running npm run build"
if npm run build; then
    echo "Build succeeded"
else
    echo "Build failed, exiting pipeline"
    sleep 5
    exit
fi

# pushes updates to github
git add .
git commit -m "$1"
git push

# run npm start
echo "Running npm run start"
npm run start