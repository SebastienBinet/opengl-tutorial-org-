#!/bin/sh
bindir=$(pwd)
cd /Users/seb/GitHub/opengl-tutorial-org/tutorial06_keyboard_and_mouse/
export DYLD_LIBRARY_PATH=:$DYLD_LIBRARY_PATH

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		 -batch -command=$bindir/gdbscript  /Users/seb/GitHub/opengl-tutorial-org/builds2/Release/tutorial06_keyboard_and_mouse 
	else
		"/Users/seb/GitHub/opengl-tutorial-org/builds2/Release/tutorial06_keyboard_and_mouse"  
	fi
else
	"/Users/seb/GitHub/opengl-tutorial-org/builds2/Release/tutorial06_keyboard_and_mouse"  
fi
