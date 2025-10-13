--simulacion de una clase en una metatabla sin metodos y con 2 atributos
Usuario = {}
Usuario.__index = Usuario

function Usuario:new(nombre, edad)
    local self = setmetatable({}, Usuario) --Crea el objeto y asigna la metatabla
    self.nombre = nombre or "Slot Vacio"
    self.edad = edad or 0
    return self
end