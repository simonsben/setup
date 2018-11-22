# Credentials:

* Add username  -> git config --global user.name "USERNAME"
* Add email     -> git config --global user.email "USER_EMAIL"
* [Save         -> git config credential.helper store](https://stackoverflow.com/questions/35942754/how-to-save-username-and-password-in-git)

# Commits

* Stage all     -> git add -A (NOTE: includes un-tracked)
* Un-stage all   -> git reset
* Go to HEAD    -> git reset --hard HEAD
* Go to last    -> git reset --hard HEAD^

# Branching

* New branch    -> git checkout -b *branch_name*
* Push new      -> git push -u origin *branch_name*

# .gitignore

A .gitignore file in the root directory of a repo allows you to specify all files you do not want to be included.
Each line is treated as a regex pattern, so you can specify all files types (ex. `*.txt`) or directory names (ex. `__pycache__`).