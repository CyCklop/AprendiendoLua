Personaje = {}

Personaje.__index = Personaje
-- CLASE PERSONAJE
function Personaje:new(id, nombre, hp, ataque, defensa)
    local self = setmetatable({}, Personaje)
    self.id = id or "void"
    self.nombre = nombre or "void"
    self.hp = hp or 0
    self.ataque = ataque or 0
    self.defensa = defensa or 0
    return self
end

function Personaje:verPersonaje()
    print("ID: "..self.id.."\nNOMBRE: "..self.nombre.."\nHP: "..self.hp.."\nATQ: "..self.ataque.."\nDEF: "..self.defensa)
end

local switch = {
    [1] = function() 

    end,
    [2] = function() 

    end,
    [3] = function() 

    end,
    [4] = function() print("Saliendo...") return os.exit() end
}

while true do
    print("//MENU//\n1.- opc1\n2.- opc2\n3.- op3\n4.- opc4\nSeleccionar opcion: ")
    local opcion = tonumber(io.read())

    if switch[opcion] then
        switch[opcion]()
    else
        print("Error, ingrese una opcion valida")
    end
end
