# ===== Basics
# don't beep on error
setopt no_beep
# don't beep on no history
setopt no_hist_beep 
# don't beep on no list
setopt no_list_beep 

# ===== History
# Allow multiple terminal sessions to all append to one zsh command history
setopt append_history
# save timestamp of command and duration
setopt extended_history 
# Add commands as they are typed, don't wait until shell exit
setopt inc_append_history 
# when trimming history, lose oldest duplicates first
setopt hist_expire_dups_first 
# Do not write events to history that are duplicates of previous events
setopt hist_ignore_dups 
# remove command line from history list when first character on the line is a space
setopt hist_ignore_space 
# When searching history don't display results already cycled through twice
setopt hist_find_no_dups 

# ===== Completion
# When completing from the middle of a word, move the cursor to the end of the word
setopt always_to_end 
# show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_menu 
# any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
# setopt auto_name_dirs 
# if unset the cursor is set to the end of the word if completion is started
setopt complete_in_word 
# don't expand aliases _before_ completion has finished
setopt complete_aliases 

# do not autoselect the first completion entry
unsetopt menu_complete 
unsetopt auto_name_dirs
# ===== Jobs
# don't nice background tasks
# setopt no_bg_nice 
# don't HUP running jobs when shell exits
# setopt no_hup 
