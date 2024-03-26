function take_damage(self, amount)
  self.life = self.life - amount
  if self.life < 20 then
    return
  end
  sprite.play_flipbook("#life", "health-" .. self.life)
end