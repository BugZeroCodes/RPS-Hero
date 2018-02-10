class DumbHero < Hero
    def initialize(name:, health:, max_health:, power:, armor: 5, throws:)
      super(name: name, health: health, max_health: max_health, power: power, armor: armor)
      @throws = throws
    end

    def get_throw
      return @throws
    end
end
