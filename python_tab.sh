cat <<EOF>> ~/.pythonrc
# enable syntax completion
try:
    import readline
except ImportError:
    print "Module readline not available."
else:
    import rlcompleter
    readline.parse_and_bind("tab: complete")
EOF

sudo sh -c 'echo "export PYTHONSTARTUP=~/.pythonrc" >>/etc/bash.bashrc'

