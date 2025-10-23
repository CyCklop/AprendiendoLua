ClasePadre = {}

ClasePadre.__index = ClasePadre

function ClasePadre:new(nombre, edad)
    local self = setmetatable({}, ClasePadre)
    self.nombre = nombre or "void"
    self.edad = edad or 0
    return self
end

