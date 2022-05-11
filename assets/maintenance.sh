# array of all the paths to th ts files in the app
ts_files=( $(find . -type f -name "*.ts") )

# repalces the first line of every ts file with
# a comment that contains my name and id
for i in "${ts_files[@]}"
do 
   echo "$i is being edited.."
   sed -i '1d' $i
   sed -i '1i //Name: David Nguyen Huu, ID: 1547834' $i
done

# pushes updates to github
git add .
git commit -m "COMPX341-22A-Maintenance commit message"
git push

