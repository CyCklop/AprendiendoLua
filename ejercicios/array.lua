Lista = {}


while true do
    print("Menu Array\n1.- Agregar a lista\n2.- Ver lista\n3.- Borrar dato de lista\n4.- Salir")
    print("Ingrese una opcion: ")
    local opcion = tonumber(io.read())

    if opcion == 1 then
        print("Ingresa un dato a la lista:")
        local agregar = io.read()
        table.insert(Lista, agregar)
    elseif opcion == 2 then
        print("/////////////////")
        for i,v in ipairs(Lista) do
            print(i, v)
        end
    elseif opcion == 3 then
        local encontrado = false
        print("Ingresa un dato a borrar de la lista:")
        local remover = io.read()

        for i,v in ipairs(Lista) do
            if v == remover then
                table.remove(Lista, i)
                print("Dato",remover,"sacado de la lista...")
                encontrado = true
                break
            end
            if not encontrado then
                print("Error, el dato ingresado no esta en la lista...")
                break
            end
        end
    elseif opcion == 4 then
        print("Saliendo del sistema...")
        break
    else
        print("Error, ingrese una opcion valida...")
    end
end