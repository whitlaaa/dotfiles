# Defined in - @ line 1
function reloaddns --wraps='dscacheutil -flushcache && sudo killall -HUP mDNSResponder' --description 'alias reloaddns=dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
  dscacheutil -flushcache && sudo killall -HUP mDNSResponder $argv;
end
