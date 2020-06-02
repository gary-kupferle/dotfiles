for file in ~/.{path,bash_prompt,exports,functions,extra}; do
  [ -r "$file" ] && source "$file"
done

for file in ~/.common_shell.d/*; do
  [ -r "$file" ] && source "$file"
done

unset file


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/$USERNAME/google-cloud-sdk/path.bash.inc' ]; then . '/Users/$USERNAME/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/$USERNAME/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/$USERNAME/google-cloud-sdk/completion.bash.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/$USERNAME/.sdkman"
[[ -s "/Users/$USERNAME/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/$USERNAME/.sdkman/bin/sdkman-init.sh"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:/Users/$USERNAME/Library/Python/3.8/bin:${PATH}"
export PATH
