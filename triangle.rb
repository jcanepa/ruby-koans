# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  a, b, c = [a, b, c].sort;

  # throw exceptions for triangles with any invalid side
  raise TriangleError if a <= 0;
  raise TriangleError if c >= (a + b);

  # three sides equal
  return :equilateral if a == b && a == c;
  # two sides equal
  return :isosceles if (a == b) or (b == c) or (a == c);
  # no sides equal
  :scalene;
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
