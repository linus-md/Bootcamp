R = QQ
f = i -> i+1
f 7

g = (a, b, c) -> (a+2, b+1, c)
g(1,1,2)

R = QQ[x, y]
I = ideal(x, y)

complicated = (I) -> (
    J := radical I;
    if J == ideal(x, y) then return ideal(0);
    J + ideal(x,y) 
)

complicated I


if I == ideal(x,y) then (
    print("Hello!");
    I
)

for i from 0 to 7 list (i^2)
toList(0..7) / (i -> i+1)


-- Excercises
restart
R = QQ
n = 10
R = QQ[(0..n) / (i -> x_i)]

subsets(n, 1) / (i->x_(i#0)) // sum
subsets(n, 2) / (i->x_(i#0)*x_(i#1)) // sum
subsets(n, 3) / (i->x_(i#0)*x_(i#1)*x_(i#2)) // sum
subsets(n, 4) / (i->x_(i#0)*x_(i#1)*x_(i#2)*x_(i#3)) // sum

f = (n, k) -> subsets(n, k) / (i -> {x_(i#0)..x_(i#(k-1))})
f(4, 2)

{2,3,4} // product


subsets(n,5) / toSequence / ( i -> i / ( j-> x_j) // times ) // sum 