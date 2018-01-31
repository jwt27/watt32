# Watt-32

This is the Watt-32 TCP/IP library, modified to be built with a cross-compiler.
All dependencies on non-portable tools have been removed, and some bugs have been fixed to allow building with modern versions of gcc (7.3.0+).

# Installing:

Make sure you have a cross-compiling toolchain installed.
```
$ git clone https://github.com/jwt27/build-djgpp.git
$ cd build-djgpp/
$ export PREFIX=/usr/local/djgpp
$ ./build-djgpp.sh 7.3.0
```

Build and install zlib:
```
$ git clone https://github.com/madler/zlib.git
$ mkdir zlib/build/
$ cd zlib/build/
$ source /usr/local/djgpp/setenv
$ PREFIX=/usr/local/djgpp
$ ../configure --prefix=$PREFIX --eprefix=$PREFIX/i586-pc-msdosdjgpp --uname=GNU
$ make -j install
```

Build watt32:
```
$ git clone https://github.com/jwt27/watt32.git
$ cd watt32/
$ source /usr/local/djgpp/setenv
$ make -j
$ make install PREFIX=/usr/local/djgpp # (optional)
```
