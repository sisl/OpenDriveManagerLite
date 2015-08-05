coord = Coord(1.0,2.0,3.0,4.0,5.0,6.0)
@test coord.x == 1.0
@test coord.y == 2.0
@test coord.z == 3.0
@test coord.h == 4.0
@test coord.p == 5.0
@test coord.r == 6.0

# print_coord(coord)

coordA = coord
coordB = Coord(1.5, 2.5, 3.5, 4.5, 5.5, 6.5)
@test coord_get_dist(coordA,coord) == 0.0
@test coord_get_dist(coordB,coord) != 0.0
@test isapprox(coord_get_dist(coordB,coord), 0.8660254037844386)

@test coord_get_dist2d(coordA,coord) == 0.0
@test coord_get_dist2d(coordB,coord) != 0.0
@test isapprox(coord_get_dist2d(coordB,coord), 0.7071067811865476)

@test isapprox(get_value(coord), norm([coord.x, coord.y, coord.z])) 

@test coord * 2.0 == Coord(2.0, 4.0, 6.0, 8.0, 10.0, 12.0)

coordA = Coord(1.0, 2.0, 3.0, 4.0, 5.0, 6.0)
coordB = Coord(1.5, 2.5, 3.5, 4.5, 5.5, 6.5)
@test coordA + coordB == Coord(2.5, 4.5, 6.5, 8.5, 10.5, 12.5)
@test plus!(copy(coordA), coordB) == Coord(2.5, 4.5, 6.5, 8.5, 10.5, 12.5)
@test coordB - coordA == Coord(0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
@test minus!(copy(coordB), coordA) == Coord(0.5, 0.5, 0.5, 0.5, 0.5, 0.5)

init!(coord)
@test coord == Coord(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
