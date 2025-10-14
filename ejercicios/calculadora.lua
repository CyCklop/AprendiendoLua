function Sumar(n,n2)
    print("Ingrese el primer numero a sumar: ")
    n = tonumber(io.read())
    print("Ingrese el segundo numero a sumar: ")
    n2 = tonumber(io.read())
    return n + n2
end

function Restar(n,n2)
    print("Ingrese el primer numero a restar: ")
    n = tonumber(io.read())
    print("Ingrese el segundo numero a restar: ")
    n2 = tonumber(io.read())
    return n - n2
end

function Dividir(n,n2)
    print("Ingrese el primer numero a dividir: ")
    n = tonumber(io.read())
    print("Ingrese el segundo numero a dividir: ")
    n2 = tonumber(io.read())
    return n/n2
end

function Multiplicar(n,n2)
    print("Ingrese el primer numero a multiplicar: ")
    n = tonumber(io.read())
    print("Ingrese el segundo numero a multiplicar: ")
    n2 = tonumber(io.read())
    return n*n2
end

while true do
    print("Calculadora\n1.- Sumar\n2.- Restar\n3.- Dividir\n4.- Multiplicar\n5 .- Salir")
    local opcion = tonumber(io.read())

    if opcion == 1 then
        local resultado = Sumar()
        print("el resultado es:",resultado)
        break
    elseif opcion == 2 then
        local resultado = Restar()
        print("el resultado es:",resultado)
        break
    elseif opcion == 3 then
        local resultado = Dividir()
        print("el resultado es:",resultado)
        break
    elseif opcion == 4 then
        local resultado = Multiplicar()
        print("el resultado es:",resultado)
        break
    else
        print("Error, ingrese una opcion valida...")
    end

end