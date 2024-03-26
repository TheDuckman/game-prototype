function change_dir(direction, go_name)
  new_dir = ""
  if direction.x == 1 then
    new_dir = go_name .. "-right"
  elseif direction.y == -1 then
    new_dir = go_name .. "-down"
  elseif direction.x == -1 then
    new_dir = go_name .. "-left"
  else
    new_dir = go_name .. "-up"
  end
  sprite.play_flipbook("#sprite", new_dir)
end
