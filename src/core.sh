#!usr/bin/env bash

# Galaxy Manager Core

walk_dir() {
  cd ~/Dev
}

walk_home() {
  cd $HOME
}

create_project() {
    walk_dir
    
    
    echo "-> Choose Your Workspace! ::" && read workspace
  
   
    # Condition: Rust Lib
   if [ $workspace == "rl" ]
    then echo "-> Project Name! ::" && read dir &&
    cargo new --lib $dir
   # Condition: Rust Bin
   elif [ $workspace == "rb" ]
     then echo "-> Project Name! ::" && read dir &&
     cargo new --bin $dir
   # Condition: Nim Project
   elif [ $workspace == "nim" ]
     then echo "-> Project Name! ::" && read dir && 
     nimble init $dir
   # Condition: Python Project 
   elif [ $workspace == "py" ]
     then echo "-> Project Name! ::" && read dir && 
     mkdir $dir &&
     cd $dir && touch main.py &&
     python3 -m venv venv && source venv/bin/activate
   # Condition: Vanilla Web
   elif [ $workspace == "vw" ]
     then echo "-> Project Name! ::" && read dir && mkdir $dir &&
     cd $dir && touch index.html &&
     mkdir css && cd css && touch app.css &&
     cd ../ && touch app.js && npm init -y
   # -> Next: Yew Project and Cleanup
   #________________________________________
   # Condition: Lists the available workspaces then exits
   elif [ $workspace == "space" ]
     then echo -e "🛠  :: \n Spaces: \n \n nim \n py \n rl \n rb \n vw \n :: 🛠"
   fi
  
   
   walk_home
  };create_project
