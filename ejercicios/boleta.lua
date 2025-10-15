Productos = {}
Carrito = {}

function IngresarProducto(producto)
    print("Ingresa el nombre del producto:")
    local nombre = io.read()
    print("Ingresa el precio del producto:")
    local precio = tonumber(io.read())

    table.insert(producto,{nombre = nombre, precio = precio})
    print("Producto: "..nombre.." aniadido correctamente!")
end


function VerProducto(producto)
    if #producto == 0 then
        print("No existen productos para ver, intente ingresar antes de ver...")
        return
    end

    print("/////LISTA PRODUCTOS/////")
    for k,v in ipairs(producto) do
        print(k..".- "..v.nombre.."-$"..v.precio.."")
    end
end

function IngresarCarrito(producto,carrito)
    if #producto == 0 then
        print("No existen productos en el sistema, intente cuando hayan...")
        return
    end

    local busqueda = false --flag
    print("Ingrese el nombre del producto a aniadir:")
    local nombre = io.read()
    for k,v in ipairs(producto) do
        if nombre == v.nombre then
            table.insert(carrito, producto.v)
            print("Producto "..nombre.." aniadido correctamente al carrito!")
            busqueda = true --flag
            break
        end
    end
    -- mensaje error
    if busqueda == false then
        print("Error, el producto '"..nombre.."' no existe...")
    end
    
end

function VerBoleta(carrito)
    if #carrito == 0 then
        print("No existen productos para ver, intente ingresar antes de ver...")
        return
    end

    print("/////LISTA PRODUCTOS/////")
    for k,v in ipairs(carrito) do
        print(k..".- "..v.nombre.."-$"..v.precio.."")
    end
end

while true do
    print("/////Menu Tienda/////\n1.- Ingresar producto\n2.- Ver productos")
    print("3.- Ingresar producto al carrito\n4.- Ver boleta\n5.- Salir\nIngresa una opcion:")
    local opcion = tonumber(io.read())

    if opcion == 1 then
        IngresarProducto(Productos)
    elseif opcion == 2 then
        VerProducto(Productos)
    elseif opcion == 3 then
        IngresarCarrito(Productos,Carrito)
    elseif opcion == 4 then
        VerBoleta(Carrito)
    elseif opcion == 5 then
        print("Saliendo...")
        break
    else
        print("Error, ingrese una opcion valida...")
    end
end