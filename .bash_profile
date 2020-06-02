for file in ~/.{path,bash_prompt,exports,functions,extra}; do
  [ -r "$file" ] && source "$file"
done

for file in ~/.common_shell.d/*; do
  [ -r "$file" ] && source "$file"
done

unset file


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/garykupferle/google-cloud-sdk/path.bash.inc' ]; then . '/Users/garykupferle/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/garykupferle/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/garykupferle/google-cloud-sdk/completion.bash.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/garykupferle/.sdkman"
[[ -s "/Users/garykupferle/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/garykupferle/.sdkman/bin/sdkman-init.sh"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:/Users/garykupferle/Library/Python/3.8/bin:${PATH}"
export PATH
