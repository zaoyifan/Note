git add .
git update-index --assume-unchanged ./deploy.sh
git commit -m "update note"
git remote add origin git@github.com:zaoyifan/Note.git
git push -u origin master