#!/bin/sh
bindir=$(pwd)
cd /Users/seb/GitHub/opengl-tutorial-org/tutorial13_normal_mapping/
export DYLD_LIBRARY_PATH=:$DYLD_LIBRARY_PATH

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		 -batch -command=$bindir/gdbscript  /Users/seb/GitHub/opengl-tutorial-org/builds/RelWithDebInfo/tutorial13_normal_mapping 
	else
		"/Users/seb/GitHub/opengl-tutorial-org/builds/RelWithDebInfo/tutorial13_normal_mapping"  
	fi
else
	"/Users/seb/GitHub/opengl-tutorial-org/builds/RelWithDebInfo/tutorial13_normal_mapping"  
fi
