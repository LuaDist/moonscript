# Copyright (C) 2011 LuaDist.
# Created by Peter Drahoš
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

project ( moonscript NONE )
cmake_minimum_required ( VERSION 2.6 )
include ( dist.cmake )

install ( DIRECTORY moonscript DESTINATION ${INSTALL_LMOD} )
install_lua_executable(moon moon)
install_lua_executable(moonc moonc)
install_data( README.md )
install_doc( docs/ )
install_test( tests/ )
