--[[
declaracion de una lista y un ciclo for que la recorre
'#lista' devuelve la longitud de la lista
]]

local lista = {"item1","item2","item3"}

for i = 1, #lista do
    print(i, lista[i])
end