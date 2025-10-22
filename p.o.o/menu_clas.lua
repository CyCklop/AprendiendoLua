Cliente = {}
Cliente.__index = Cliente

function Cliente:new(nombre, edad, estcivil)
    local self = setmetatable({},Cliente)
    self.nombre = nombre or "No definido"
    self.edad = edad or 0
    self.estcivil = estcivil or "No definido"
    return self
end

function Cliente:verDatos()
    print("\n///DATOS CLIENTE///\nNombre: "..self.nombre.."\nEdad: "..self.edad.."\nEstado Civil: "..self.estcivil)
end

function IngresarDatos()
    print("Ingresa el nombre del cliente: ")
    local nombre = io.read()
    print("Ingresa la edad del cliente: ")
    local edad = tonumber(io.read())
    print("Ingresa el estado civil: ")
    local ecivil = io.read()

    return Cliente:new(nombre, edad, ecivil)
end

local Cliente1

while true do
    print("// Menu //\n1.- Registrar Cliente\n2.- Ver info de cliente\n3.- Salir")
    local opcion = tonumber(io.read())

    if opcion == 1 then
        Cliente1 = IngresarDatos()
    elseif opcion == 2 then
        if Cliente1 then
            Cliente1 = Cliente1:verDatos()
        end
    elseif opcion == 3 then
        print("Saliendo del sistema...")
        break
    else
        print("Error, ingrese una opcion valida...")
        break
    end
end