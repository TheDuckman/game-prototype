function change_direction(direction, go_name)
  if direction.x == 1 then
    return go_name .. "-right"
  elseif direction.y == -1 then
    return go_name .. "-down"
  elseif direction.x == -1 then
    return go_name .. "-left"
  else
    return go_name .. "-up"
  end
end
