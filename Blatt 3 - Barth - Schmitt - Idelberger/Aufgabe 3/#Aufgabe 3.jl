using Pkg
Pkg.add("Plots")
#Pkg.instantiate(); Pkg.add("Plots"); Pkg.activate("")
using Plots


function Runge(x)
    return 1/(1+25*x^2)
end


function Gitter(M::Int,k::Int)
    N = M * k
    return collect(range(-1, 1, N))         #collect erzuegt ein Array mit allen äquidistanten Punkten
end





x = Gitter(6,2)
y = Runge.(x)
plot(x,y)