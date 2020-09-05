# Defined in - @ line 1
function workspace --wraps='cd ~/dev/workspace' --description 'alias workspace=cd ~/dev/workspace'
  cd ~/dev/workspace $argv;
end
