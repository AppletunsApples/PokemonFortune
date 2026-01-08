Battle::ItemEffects::DamageCalcFromUser.add(:DECIDUEYEQUILL,
  proc { |item, user, target, move, mults, power|
    next unless user&.pokemon
    next unless user.item == item
    next unless user.pokemon.isSpecies?(:DECIDUEYE)
    next unless move&.pbContactMove?(user)
    mults[:power_multiplier] *= 1.3
  }
)