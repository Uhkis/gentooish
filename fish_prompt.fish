function fish_prompt
  # Cache exit status
  set -l last_status $status

  # Just calculate these once, to save a few cycles when displaying the prompt
  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end
  if not set -q __fish_prompt_char
    switch (id -u)
      case 0
  set -g __fish_prompt_char '#'
      case '*'
  set -g __fish_prompt_char '%'
    end
  end

  set -l normal (set_color normal)
  set -l white (set_color FFFFFF)
  set -l turquoise (set_color 5fdfff)
  set -l orange (set_color df5f00)
  set -l hotpink (set_color df005f)
  set -l blue (set_color 5555FF)
  set -l green (set_color 00FF00)
  set -l purple (set_color af5fff)

  # Line 1
  echo -n $white$green$USER'@'$__fish_prompt_hostname$white' '$blue(pwd)$turquoise
  echo

  # Line 2
  echo -n $white$__fish_prompt_char $normal
end


