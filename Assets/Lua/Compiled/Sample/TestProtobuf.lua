-- Generated by CSharp.lua Compiler
local System = System
local UnityEngine = UnityEngine
local CSharpLuaProjectProtocol
local CSharpLuaSettingProto
System.import(function (out)
  CSharpLuaProjectProtocol = CSharpLua.Project.Protocol
  CSharpLuaSettingProto = CSharpLua.Project.Protocol.SettingProto
end)
System.namespace("Sample", function (namespace)
  namespace.class("TestProtobuf", function (namespace)
    local Run, Encode, Decode
    Run = function ()
      protobuf.register_file("Assets/Lua/3rd/pbc/Protocol/CommonPrototype.pb")

      local default = CSharpLuaProjectProtocol.SettingProto()
      default.SettingsMark = 101
      local proto = default
      local extern = CSharpLuaSettingProto.ValuePairProto()
      extern.Key = "a"
      extern.Value = "b"
      proto.Values:Add(extern)
      local bytes = Encode(proto)
      local t = Decode(bytes, CSharpLuaProjectProtocol.SettingProto)
      UnityEngine.Debug.LogFormat("ProtobufDecode {0}", t.SettingsMark)
    end
    Encode = function (proto)
      local bytes = nil
      bytes = encodeProtobuf(proto)
      return bytes
    end
    Decode = function (bytes, T)
      local t = nil
      t = decodeProtobuf(bytes, T)
      return t
    end
    return {
      Run = Run
    }
  end)
end)
