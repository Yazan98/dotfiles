
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.bash_profile;

# ZSH Theme
ZSH_THEME="powerlevel10/powerlevel10k"
plugins=(git zsh-autosuggestions)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# PC aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias bundle!="bundle install && rake install"
alias prod="git add . && git commit -m "New Changes" && git checkout master"
alias adb='/Users/yazantarifi/Library/Android/sdk/platform-tools/adb'
alias code="cd ~ && cd Code"

# PC Paths
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby@2.7/bin:$PATH"
export JAVA_HOME="/opt/homebrew/opt/openjdk/bin/java" 
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/jre/bin:$PATH
export PATH=$PATH:/Users/yazantarifi/Library/Android/sdk/platform-tools
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH
export PATH=/usr/local/bin
export PATH=$PATH:/usr/local/bin
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Fastlane
# we don't want to influence the stats
export FASTLANE_SKIP_UPDATE_CHECK="1"
export FASTLANE_OPT_OUT_USAGE="1"
export FASTLANE_OPT_OUT_CRASH_REPORTING="1"
export LANG=en_US.UTF-8

# Tapper Paths
export PATH=/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/yazantarifi/Android/Sdk/tools:/Users/yazantarifi/Android/Sdk/tools/bin:/Users/yazantarifi/Android/Sdk/platform-tools:/Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home/jre/bin:/usr/local/bin:/usr/local/bin:/Users/yazantarifi/Library/Android/sdk/platform-tools
export PATH=/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/yazantarifi/Android/Sdk/tools:/Users/yazantarifi/Android/Sdk/tools/bin:/Users/yazantarifi/Android/Sdk/platform-tools:/Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home/jre/bin:/usr/local/bin:/usr/local/bin:/Users/yazantarifi/Library/Android/sdk/platform-tools

# Shell Env
eval $(/opt/homebrew/bin/brew shellenv)
echo "eval $(/opt/homebrew/bin/brew shellenv)" >> ~/.zshrc

# Node Version Control 
source $(brew --prefix nvm)/nvm.sh


