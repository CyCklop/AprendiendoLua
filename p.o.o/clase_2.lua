MyClass = {}

function MyClass:new(o)
    o = o or {}
    setmetatable({}, MyClass)
    self.__index = self
    return o
end

--metodo de ejemplo
function MyClass:saludar(nombre)
    print("Hola, mi nombre es",nombre)
end

--instanciar una clase 
local MyObject = MyClass:new()

--llamar al metodo 'saludar'
MyClass:saludar("sett")