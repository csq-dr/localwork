## Grab other's repo
git clone <local path>

## Reset remote name (in local path)
git remote rename origin <new name>

## Or before grab, add new remove also in the local path
git remote add <remotename> <github repo URL>

## Fetch repo before pull
git fetch <remotename>

git fetch <remotename> -v (fetch in detail)

## Pull from other's repo (master branch)
git pull <remotename> master

## Initialize a local folder for git (in local path)
git init

## add new file to git
git add <filename>

## write commit
git commit -m 'some comments here'
