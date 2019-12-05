+ git reset/rebase/cherry-pick
  + reset
  + rebase
  + cherry-pick
+ Clone a repo to a folder named as this repo
  + `git clone \<local path>`
  + Clone a single branch: `git clone --single-branch --branch <branchname> <remoterepo>`
    + https://stackoverflow.com/a/1911126
+ Reset remote name (in local path)

	- `git remote rename origin \<new name>`
+ Or before grab, add new remove also in the local path

	- `git remote add \<remotename> \<github repo URL>`
+ Fetch repo before pull

	- `git fetch \<remotename>`

	- `git fetch \<remotename> -v (fetch in detail)`
+ Pull from other's repo (master branch)
	
	- `git pull \<remotename> master`
+ Initialize a local folder for git (in local path)
	
	- `git init`
+ add new file to git

	- `git add \<filename>`
+ write commit

	- `git commit -m 'some comments here'`
+ github markdown syntax

	- see <https://help.github.com/articles/basic-writing-and-formatting-syntax/>
+ cancel local changes
	
	- `git reset --hard`
- <http://christoph.ruegg.name/blog/git-howto-revert-a-commit-already-pushed-to-a-remote-reposit.html>
+ Use Git with SSH keys
  - add ssh key: https://help.github.com/articles/connecting-to-github-with-ssh/
  - working with ssh passphrase: https://help.github.com/articles/working-with-ssh-key-passphrases/
