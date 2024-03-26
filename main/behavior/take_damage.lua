function take_damage(self, amount)
  self.life = self.life - amount
  if self.life <= 0 then
    self.dead = true
    return
  end
  sprite.play_flipbook("#life", "health-" .. self.life)
end