import gdb.printing

# printer template
class XXXPrinter:
    """Print an XXX"""

    def __init__(self, val):
        self.val = val

    def to_string(self):
        return 'String'

    def children(self):
        return 'Python Iterator'

    def display_hint(self):
        return 'array'|'map'|'string'

def build_pretty_printers():
    """Builds the pretty printers for CII."""
    pp = gdb.printing.RegexpCollectionPrettyPrinter("CII")
    pp.add_printer('XXXPrinter', '^XXXPrinter$', XXXPrinter)
    return pp

gdb.printing.register_pretty_printer(gdb.current_objfile(), build_pretty_printers)
