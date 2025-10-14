A1 = 500
D = 1.15
A = {}

for i=1,12 do
    N = i+1
    table.insert(A, A1*D^(N - 1))
end 

for N,v in pairs(A) do
    print("mes: "..N.." usuarios: "..math.floor(v + 0.5))
end