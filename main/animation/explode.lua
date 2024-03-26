function explode(self, sender)
  self.speed = 0
  self.moving = false
  self.dead = true
  sprite.set_hflip("#sprite", false)
  sprite.set_vflip("#sprite", false)
  sprite.play_flipbook("#sprite", "explosion")
  sprite.play_flipbook("#life", "empty-sprite")
end