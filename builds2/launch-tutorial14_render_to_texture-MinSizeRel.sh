#!/bin/sh
bindir=$(pwd)
cd /Users/seb/GitHub/opengl-tutorial-org/tutorial14_render_to_texture/
export DYLD_LIBRARY_PATH=:$DYLD_LIBRARY_PATH

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		 -batch -command=$bindir/gdbscript  /Users/seb/GitHub/opengl-tutorial-org/builds2/MinSizeRel/tutorial14_render_to_texture 
	else
		"/Users/seb/GitHub/opengl-tutorial-org/builds2/MinSizeRel/tutorial14_render_to_texture"  
	fi
else
	"/Users/seb/GitHub/opengl-tutorial-org/builds2/MinSizeRel/tutorial14_render_to_texture"  
fi
