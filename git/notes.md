# Credentials:
* Add username  -> git config --global user.name "USERNAME"
* Add email     -> git config --global user.email "USER_EMAIL"
* [Save         -> git config credential.helper store](https://stackoverflow.com/questions/35942754/how-to-save-username-and-password-in-git)

# Commits
* Stage all     -> git add -A (NOTE: includes untracked)
* Unstage all   -> git reset
* Go to HEAD    -> git reset --hard HEAD
* Go to last    -> git reset --hard HEAD^

# Branching
* New branch    -> git checkout -b *branch_name*
* Push new      -> git push -u origin *branch_name*