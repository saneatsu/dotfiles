echo $'\e[35m * Start copying to here\e[m'

echo $'\e[35m * VSCode\e[m'
cp ~/Library/Application\ Support/Code/User/keybindings.json VSCode/
cp ~/Library/Application\ Support/Code/User/settings.json VSCode/

echo $'\e[35m * .commit_template\e[m'
cp ~/.commit_template .

echo $'\e[35m * .gitconfig\e[m'
cp ~/.gitconfig .

echo $'\e[35m * .tmux.conf\e[m'
cp ~/.tmux.conf .

echo $'\e[35m * .zshrc\e[m'
cp ~/.zshrc .

echo $'\e[35m * Finish\e[m'