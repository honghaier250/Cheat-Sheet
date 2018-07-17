# verbose mode
make VERBOSE=1
cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON

# debug
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX="/usr/local/xxx" ..

# specify compiler
cmake -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++

# specify python
cmake -DPYTHON_EXECUTABLE:FILEPATH="/usr/local/tools/python-3.3/bin/python3" -DPYTHON_INCLUDE_DIR:PATH="" -DPYTHON_LIBRARY:FILEPATH=""

# cflags
cmake -DCMAKE_CXX_FLAGS:STRING='-I/usr/local/tools/clang-6.0/include/c++/v1/'

# specify openssl
cmake -DOPENSSL_ROOT_DIR='' -DOPENSSL_LIBRARIES=''
