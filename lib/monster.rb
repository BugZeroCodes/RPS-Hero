class Monster < Character
  def get_throw
    [:rock, :paper, :scissors].sample
  end
end
