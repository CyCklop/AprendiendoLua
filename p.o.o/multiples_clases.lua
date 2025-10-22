Producto = {}
Producto.__index = Producto

Carrito = {}
Carrito.__index = Carrito

-- CLASE PRODUCTO
function Producto:new(id, nombre, precio)
    local self = setmetatable({}, Producto)
    self.id = id or nil 
    self.nombre = nombre or nil
    self.precio = precio or 0
    return self
end
-- METODOS PRODUCTO
function Producto:VerProductos()
    print("\n//// MENU PRODUCTOS ////\nID: "..self.id.."\nNOMBRE: "..self.nombre.."\nPRECIO: "..self.precio)
end

--CLASE CARRITO 
function Carrito:new(total)
    local self = setmetatable(Carrito, {__index = Producto})
    self.total = total or 0
    return self
end

local switch = {
    [1] = function() end,
    [2] = function() end,
    [3] = function() end,
    [4] = function() print("Saliendo...") return os.exit() end
}

--INSTACIAS DE CLASES
local producto1,carrito1

while true do
    print("//// Menu Principal ////\n1.- Agregar Producto\n2.- Ver Productos\n3.- Agregar al carrito\n4.- Salir")
    local opcion = tonumber(io.read())

    if switch[opcion] then
        switch[opcion]()
    else
        print("Error, ingrese una opcion valida...")
    end
end