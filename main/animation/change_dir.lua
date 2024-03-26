function change_dir(direction, go_name)
  new_dir = ""
  if direction.x == 1 then
    new_dir = go_name .. "-e"
  elseif direction.y == -1 then
    new_dir = go_name .. "-s"
  elseif direction.x == -1 then
    new_dir = go_name .. "-w"
  else
    new_dir = go_name .. "-n"
  end
  sprite.play_flipbook("#sprite", new_dir)
end
