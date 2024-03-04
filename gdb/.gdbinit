source ~/.gdb/pretty-printer-cii/cii-gdb.py

define plist
  set var $n = $arg0->next
  while $n
    p *$n
    set var $n = $n->next
  end
end
