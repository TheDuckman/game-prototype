function fire_bullet(self, fire_freq, factory_id)
  if math.random(0, 100) > fire_freq then
    local angle = math.atan2(self.dir.y, self.dir.x)
    local rot = vmath.quat_rotation_z(angle)
    local props = { dir = self.dir }
    factory.create(factory_id, nil, rot, props)
  end
end