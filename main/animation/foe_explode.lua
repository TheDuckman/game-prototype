function explode(self)
  self.speed = 0
  self.moving = false
  self.dead = true
  sprite.set_hflip("#sprite", false)
  sprite.set_vflip("#sprite", false)
  sprite.play_flipbook("#sprite", "explosion")
end