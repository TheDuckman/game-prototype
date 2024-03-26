function get_new_direction_clockwise(direction)
  local new_dir = nil
  if direction.x == 1 then
    new_dir = vmath.vector3(0, -1, 0)
  elseif direction.y == -1 then
    new_dir = vmath.vector3(-1, 0, 0)
  elseif direction.x == -1 then
    new_dir = vmath.vector3(0, 1, 0)
  else
    new_dir = vmath.vector3(1, 0, 0)
  end
  return new_dir
end

function get_new_direction_random()
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
