local switch = {
    [1] = function() print("Elegiste la 1 opcion")end,
    [2] = function() print("Elegiste la 2 opcion")end,
    [3] = function() print("Elegiste la 3 opcion")end,
    [4] = function() print("Saliendo...") return os.exit() end
}


while true do
    print("Menu\n1.- primera opcion\n2.- segunda opcion\n3.- tercera opcion\n4.- Salir")
    local opcion = tonumber(io.read())

    if switch[opcion] then
        switch[opcion]()
    else
        print("Error, opcion no valida...")
    end
end