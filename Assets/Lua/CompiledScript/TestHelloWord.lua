-- Generated by CSharp.lua Compiler 1.1.0
local System = System
local UnityEngine = UnityEngine
System.namespace("", function (namespace) 
  namespace.class("TestHelloWord2", function (namespace) 
    local Awake
    Awake = function (this) 
      UnityEngine.Debug.Log("TestHelloWord2")
    end
    return {
      __inherits__ = function (global) 
        return {
          global.MonoBehaviour
        }
      end, 
      Awake = Awake
    }
  end)
end)
System.namespace("", function (namespace) 
  namespace.class("TestHelloWord", function (namespace) 
    local Awake
    Awake = function (this) 
      UnityEngine.Debug.Log("TestHelloWord")
      UnityEngine.AddComponent(this:getgameObject(), TestHelloWord2)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.MonoBehaviour
        }
      end, 
      Awake = Awake
    }
  end)
end)
