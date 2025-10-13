-- menu emulando switch case en lua

while true do
    print("Ingrese una opcion\n1.- Ingresar\n2.- Salir\ningrese una opcion: ")
    local opcion = tonumber(io.read())

    if opcion == 1 then
        print("Has elegido la opcion 1")
    elseif opcion == 2 then
        print("Saliendo...")
        break
    else
        print("Error, ingrese una opcion valida")
    end
    print()
end