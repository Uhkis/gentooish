function fish_right_prompt
  set -l niceblue (set_color 2345aa)

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_color 2345aa
  set -g __fish_git_prompt_color_flags df5f00
  set -g __fish_git_prompt_color_prefix white
  set -g __fish_git_prompt_color_suffix white
  set -g __fish_git_prompt_char_untrackedfiles " untracked:"
  set -g __fish_git_prompt_char_dirtystate "modified:"
  set -g __fish_git_prompt_char_stateseparator "> "
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_show_informative_status true
  __fish_git_prompt "$niceblue<%s"
end
