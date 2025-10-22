Producto = {}
Producto.__index = Producto

-- CLASE PRODUCTO
function Producto:new(id, nombre, precio)
    local self = setmetatable({}, Producto)
    self.id = id or "Vacio"
    self.nombre = nombre or "Vacio"
    self.precio = precio or 0
    return self
end

-- METODOS PRODUCTO
function Producto:verProductos()
    print("\n//// MENU PRODUCTOS ////\nID: "..self.id.."\nNOMBRE: "..self.nombre.."\nPRECIO: "..self.precio)
end

-- FUNCIONES EXTERNAS A CLASES
function AgregarProductos()
    print("Ingresa el ID del producto: ")
    local id = io.read()
    print("Ingresa el nombre del producto")
    local nombre = io.read()
    print("Ingresa el precio del producto: ")
    local precio = tonumber(io.read())

    return Producto:new(id, nombre, precio)
end

local switch = {
    [1] = function()
        Producto1 = AgregarProductos()
    end,
    [2] = function() 
        if Producto1 then
            Producto1:verProductos()
        else
            print("Error, no existen productos ingresados...")
        end
    end,
    [3] = function() print("saliendo...") return os.exit() end,
}

-- INSTANCIA DE CLASE PRODUCTO
local Producto1

while true do
    print("//// Menu Principal ////\n1.- Agregar Producto\n2.- Ver Productos\n3.- Salir")
    local opcion = tonumber(io.read())

    if switch[opcion] then
        switch[opcion]()
    else
        print("Error, ingrese una opcion valida...")
    end
end