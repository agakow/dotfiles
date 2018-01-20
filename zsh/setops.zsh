# ===== Basics
setopt no_beep # don't beep on error
setopt no_hist_beep # don't beep on no history
setopt no_list_beep # don't beep on no list

# ===== History
setopt append_history # Allow multiple terminal sessions to all append to one zsh command history
setopt extended_history # save timestamp of command and duration
setopt inc_append_history # Add commands as they are typed, don't wait until shell exit
setopt hist_expire_dups_first # when trimming history, lose oldest duplicates first
setopt hist_ignore_dups # Do not write events to history that are duplicates of previous events
setopt hist_ignore_space # remove command line from history list when first character on the line is a space
setopt hist_find_no_dups # When searching history don't display results already cycled through twice

# ===== Completion
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word
setopt auto_menu # show completion menu on successive tab press. needs unsetop menu_complete to work
# setopt auto_name_dirs # any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt complete_in_word # if unset the cursor is set to the end of the word if completion is started
setopt complete_aliases # don't expand aliases _before_ completion has finished

unsetopt menu_complete # do not autoselect the first completion entry
unsetopt auto_name_dirs
# ===== Jobs
# setopt no_bg_nice # don't nice background tasks
# setopt no_hup # don't HUP running jobs when shell exits
