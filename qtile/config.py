import os
import sys
sys.path.append(os.path.dirname(os.path.realpath(__file__)))

try:
    from qtile_common import *
except ImportError:
    sys.stderr.write("UNABLE TO LOAD CONFIG from qtile_common")
