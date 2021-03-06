# Symfony2 basic command completion

_symfony2_get_command_list_custom () {
	$SETTINGS/bin/sf --no-ansi | sed "1,/Available commands/d" | awk '/^  [a-z]+/ { print $1 }'
}

_symfony2_custom () {
  if [ -f $SETTINGS/bin/sf ]; then
    compadd `_symfony2_get_command_list_custom`
  fi
}

compdef _symfony2_custom sf
