# Copyright (C) 2011 LuaDist.
# Created by Peter Drahoš
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

project ( moonscript NONE )
cmake_minimum_required ( VERSION 2.8 )
include ( cmake/dist.cmake )
include ( lua )

install_lua_module ( moonscript moonscript/init.lua )
install_lua_module ( moonscript.compile moonscript/compile.lua )
install_lua_module ( moonscript.compile.statement moonscript/compile/statement.lua )
install_lua_module ( moonscript.compile.value moonscript/compile/value.lua )
install_lua_module ( moonscript.compile.format moonscript/compile/format.lua )
install_lua_module ( moonscript.transform moonscript/transform.lua )
install_lua_module ( moonscript.types moonscript/types.lua )
install_lua_module ( moonscript.parse moonscript/parse.lua )
install_lua_module ( moonscript.dump moonscript/dump.lua )
install_lua_module ( moonscript.data moonscript/data.lua )
install_lua_module ( moonscript.util moonscript/util.lua )
install_lua_module ( moonscript.errors moonscript/errors.lua )
install_lua_module ( moonscript.version moonscript/version.lua )

install_lua_module ( moon moon/init.lua )
install_lua_module ( moon.all moon/all.lua )

install_lua_executable ( moon bin/moon )
install_lua_executable ( moonc bin/moonc )

install_data ( README.md )
install_doc ( docs/ )
install_test ( tests/ )
