Diccionario = {}

function AgregarTermino(diccio)
    print("Ingresa el nombre del termino: ")
    local termino = io.read()
    table.insert(diccio,termino)
    print("//Termino: "..termino.." correctamente agregado!//")
end
-- Arreglar funcion cuando tenga tiempo
function AgregarDefinicion(diccio)
    if #diccio == 0 then
        print("//Error, no hay un termino creado en el diccionario...//")
        return
    end

    local busqueda = false --flag
    print("Buscar termino para agregar definicion: ")
    local termino = io.read()
    for k,v in ipairs(diccio) do
        if termino == k.diccio then
            busqueda = true --flag
            print("Ingrese definicion del termino "..k.termino.." :")
            local definicion = io.read()
            table.insert(termino,{definicion = definicion})
            print("//Definicion agregada correctamente!//")
        end
    end
    busqueda = false --flag
end

while true do
    print("////DiccioLua////\n1.- Agregar termino\n2.- Agregar definicion\n3.- Buscar termino\n4.- Salir")
    local opcion = tonumber(io.read())

    if opcion == 1 then
        AgregarTermino(Diccionario)
    elseif opcion == 2 then
        AgregarDefinicion(Diccionario)
    elseif opcion == 3 then
        break
    elseif opcion == 4 then
        break
    else
        print("//Error, ingrese una opcion valida...//")
        break
    end
end