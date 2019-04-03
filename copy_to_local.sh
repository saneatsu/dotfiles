echo $'\e[35m * Start copying to local\e[m'

echo $'\e[35m * VSCode\e[m'
cp VSCode/keybindings.json ~/Library/Application\ Support/Code/User
cp VSCode/settings.json ~/Library/Application\ Support/Code/User

echo $'\e[35m * .commit_template\e[m'
cp .commit_template ~/

echo $'\e[35m * .gitconfig\e[m'
cp .gitconfig ~/

echo $'\e[35m * .tmux.conf\e[m'
cp .tmux.conf ~/

echo $'\e[35m * .zshrc\e[m'
cp .zshrc ~/

echo $'\e[35m * Finish\e[m'