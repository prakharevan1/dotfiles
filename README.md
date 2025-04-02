# Step 1. Installing git
## Run "sudo pacman -S git" to install git
## Then, you need to install git lfs
## Run "sudo pacman -S git-lfs"
# Step 2. Installing brew
## Go on their site and install it https://brew.sh, works on all linux distros LMAO
# Step 3. Installing neovim
## Run "brew install nvim" (it should install version 10.4)
## Test it out with "nvim" in the cmd prompt
## Then, run ":check health"
## Fix !!everything before cloning (no checkhealth warnings) or just skip this and eyeball it
# Step 4. Clone
## Run "cd ~" (home dir)
## Run "rm -rf ~/* (since it will be set up on a new machine)"
## then, git clone "https://github.com/prakharevan1/dotfiles.git ~/"
## Finally, "mv ~/dotfiles/* ~/" and "mv ~/dotfiles/.* ~/" (to also get hidden files)
# Step 5. Late game cleanup
## After you are done, you can just "rm -rf ~/dotfiles" since you dont need it anymore
# Step 6. Check if it isnt all broken
## run "git status" in the home directory
## Then make a new branch for the laptop and push all the changes there
## Btw since wsl stinks you need to add this to "/etc/wsl.conf"
### (run sudo nano wsl.conf in etc so you can write to it)
```
[interop]
appendWindowsPath=false
```
### What this does is that it disables sharing between drives so blink in the command line doesnt crash

