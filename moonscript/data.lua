module("moonscript.data", package.seeall)
local concat = table.concat
Set = function(items)
  local self = { }
  do
    local _item_0 = items
    for _index_0 = 1, #_item_0 do
      local key = _item_0[_index_0]
      self[key] = true
    end
  end
  return self
end
Stack = (function()
  local _parent_0 = nil
  local _base_0 = {
    __tostring = function(self)
      return "<Stack {" .. concat(self, ", ") .. "}>"
    end,
    pop = function(self)
      return table.remove(self)
    end,
    push = function(self, value)
      table.insert(self, value)
      return value
    end,
    top = function(self)
      return self[#self]
    end
  }
  _base_0.__index = _base_0
  if _parent_0 then
    setmetatable(_base_0, getmetatable(_parent_0).__index)
  end
  local _class_0 = setmetatable({
    __init = function(self, ...)
      do
        local _item_0 = {
          ...
        }
        for _index_0 = 1, #_item_0 do
          local v = _item_0[_index_0]
          self:push(v)
        end
      end
      return nil
    end
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  return _class_0
end)()
lua_keywords = Set({
  'and',
  'break',
  'do',
  'else',
  'elseif',
  'end',
  'false',
  'for',
  'function',
  'if',
  'in',
  'local',
  'nil',
  'not',
  'or',
  'repeat',
  'return',
  'then',
  'true',
  'until',
  'while'
})
