#!/bin/bash

# Suggested testing environment:
# https://replit.com/languages/bash

# Files on the work directory should be removed if and only if:
# > Their names start with out_0 or out_1.
# > They have a .png extension.

# -p so it doesn't fail if the directory exists.
mkdir -p work
touch work/out_0a.png
touch work/out.png
touch work/out_0.pdf
touch work/out_1.png

# Insert your code here
# work/out_0a.png should be removed.
# work/out_1.png should be removed.
# work/out.png should not, as it doesn't have '_0' or '_1' after 'out'.
# work/out_0.pdf should not, as it doesn't end in '.png'.

ls work

# Expected result:
# out.png
# out_0.pdf
