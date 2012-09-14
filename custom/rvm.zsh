# get the name of the branch we are on
function rvm_prompt_info() {
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null) || return
  if [ ! -z `~/.rvm/bin/rvm-prompt g 2> /dev/null` > /dev/null ];then
    echo "($ruby_version)"
  fi
}
