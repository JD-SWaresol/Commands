"#############################################################################################"
"####################################### GITHUB COMMANDS #####################################"
"#############################################################################################"


"************************************ Basic Git Settings **********************************"
"******************************************************************************************"

" =====> Basic Git Settings to start"

git config --global user.name
  
git config --global user.email





" =====> List Basic Git Settings"
git config --list
  




"************************************ Git Manage Project **********************************"
"******************************************************************************************"

" =====> Init Git Project"

//NOTE "You must be inside Project Directory"

git init





" =====> Add New Change "

git add "new_file_or_folder"


//NOTE: "You can add all changes, but you need to be careful!!!"

git add .





" =====> List New Changes"

git status





" =====> Set Git Commit to New Changes"

git commit -m "New Commit Message"





" =====> Set Branch Name to New Project"

git branch -M main





" =====> Add Remote Git Project to Initialized Local Project"

git remote add origin "Http pr SSH url project"





" =====> Remove Remote Git Project to Initialized Local Project"

git remote remove origin "Http pr SSH url project"





" =====> Check Remote URL origin Project"

git remote -v





" =====> Push Commited Changes to specific branch"

git push -u origin "branch_name"





" =====> Pull Updated Project from Repository"

git pull





" =====> Restore Untracked files ----------"
git restore 'Untracked file(s)'





"************************************ Manage Git Branches *********************************"
"******************************************************************************************"


" =====> List all Branches"

git branch





" =====> Create a New Branch"

git branch "new_branch_name"





" =====> Git Checkout"

// "The git checkout command allows you to switch between branches or to a specific commit"

// "1.- Git checkout switch existing branch"

git checkout "existing_branch_name"





" =====> Push Commited Changes to specific branch since another Branch"

git push origin "branch_name"





" =====> Pull Updated Project from Repository"

git pull "remote-origin" "branch_name"





" =====> Compare Changes Between Two Commits (even if you are comparing two branches)"

git diff "commit_1" "commit_2"





" =====> Get File names that have differences Between Two Commits"

git diff --name-only "commit_1" "commit_2"





" =====> Compare Changes Between Two Branches (You need to specify since another branch)"

git diff "another_branch"





" =====> Get File names that have differences Between Two Branches"

git diff --name-only "another_branch"





" =====> Compare changes not staged inside a file"

git diff < folder || file || */file >





" =====> Merge Changes Between Two Branches (You need to specify since another branch)"

git merge "another_branch"

//NOTE: "When you finish this you need to do 'git push origin actual_branch_name' without git commit ..."





" =====> List all commits codes with their features"

git log





" =====> Show a Basic Commit Tree"

git log --oneline --decorate --graph --all





" =====> Show an Advaced Commit Tree"

git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all

//NOTE: "This show too who pushed the commit and what time ago"





"************************************ Manage Git Changes **********************************"
"******************************************************************************************"

" =====> Undo Stage Changes"







