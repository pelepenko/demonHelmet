#!/bin/bash

if [ -d "build" ]
then
	echo "Directory 'build' already exists, moving to it"
	cd build
	echo "Clean build directory"
	rm -rf *
	echo "Configuring"
	# cmake -DCMAKE_BUILD_TYPE=Debug ..
	cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
	# cmake ..
else
	mkdir "build" && cd build
	# cmake -DCMAKE_BUILD_TYPE=Debug ..
	cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
	# cmake ..
fi

make -j$(nproc) || exit 1
if [ $? -eq 1 ]
then
	echo "Compilation failed!"
else
	echo "Compilation successful!"
	cd ..
	if [ -f "demonHelmet" ]; then
		echo "Saving old build"
		mv ./demonHelmet ./demonHelmet.old
	fi
	cp ./build/demonHelmet ./demonHelmet
fi
