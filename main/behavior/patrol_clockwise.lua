require("main.behavior.get_new_direction")

function patrol_clockwise(self, dt)
  if self.moving then
    local pos = go.get_position()
    pos = pos + self.dir * self.speed * dt
    self.distance = self.distance - math.abs(self.speed * dt)
    -- se chegou no fim do trajeto, muda direcao (sentido horario)
    if self.distance < 0 then
      local new_dir = get_new_direction_clockwise(self.dir)
      self.dir = vmath.normalize(new_dir)
      change_dir({ x = new_dir.x, y = new_dir.y }, self.name)
      self.distance = self.base_distance
    end
    -- evita sair do mapa
    if pos.x < 0 then
      pos.x = 0
    end
    if pos.y < 0 then
      pos.y = 0
    end
    go.set_position(pos)
  end
end
