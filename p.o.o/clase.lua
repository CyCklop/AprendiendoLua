Usuario = {}
Usuario.__index = Usuario

function Usuario:new(nombre, edad)
    local self = setmetatable({}, Usuario) --Crea el objeto y asigna la metatabla
    self.nombre = nombre or "Slot Vacio"
    self.edad = edad or 0
    return self
end

function Usuario:saludar()
    print(self.nombre .. " esta saludando!")
end

local persona1 = Usuario:new()

persona1:saludar()