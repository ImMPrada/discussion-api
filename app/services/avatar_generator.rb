class AvatarGenerator
  DICE_BEAR_URL_TEMPLATE = "https://avatars.dicebear.com/api/:sprites/:seed.svg".freeze
  DEFAULT_SPRITE = "human"

  attr_reader :url

  def initialize(sprites: nil, seed: nil)
    @sprites = sprites || DEFAULT_SPRITE
    @seed = seed || rand.to_s
  end

  def call
    @url = DICE_BEAR_URL_TEMPLATE
      .gsub(":sprites", @sprites)
      .gsub(":seed", @seed)

    url
  end
end
