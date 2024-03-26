function get_new_direction()
  local new_dir = nil
  local x = 0
  local y = 0
  while y == 0 and x == 0 do
    x = math.random(-1, 1)
    y = math.random(-1, 1)
  end
  new_dir = vmath.vector3(x, y, 0)
  return new_dir
end