k = QQ
R = k[x,y,z, w]

I = ideal(x^2, y^2, z^2)
J = ideal(x*y*z)

I + J
intersect(I, J)

use (R/I) -- x,y,z deg <= 1, w anything
x^3

K = ideal(x+y+z)

-- indexed variables
restart
R = QQ[x, y, z]
R = QQ[x_0..x_3]
S = QQ[x,y]
J = ideal(x+y)

use R
phi = map(R, S)
phi J

use S
psi = map(S, R)

restart
R = QQ[x,y, MonomialOrder => Lex]
describe R
x > y
x > y^1000

