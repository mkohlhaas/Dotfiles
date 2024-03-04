"""Pretty printer for Atom"""

import gdb.printing

class AtomPrinter:
    """Print an Atom"""

    def __init__(self, val):
        self.val = val

    def to_string(self):
        return "{my-str = %s, my-len = %d}" % (self.val['str'], self.val['len'])
        
    def children(self):
        childs = []
        if self.val['link'] != 0:
            childs.append(('my-atom', self.val['link'].dereference()))
        return childs 

    def display_hint(self):
        return 'array'

def build_pretty_printers():
    """Builds the pretty printers for CII."""
    pp = gdb.printing.RegexpCollectionPrettyPrinter("CII")
    pp.add_printer('AtomPrinter', '^atom$', AtomPrinter)
    return pp

gdb.printing.register_pretty_printer(gdb.current_objfile(), build_pretty_printers())
