    def sboost_able?
      return false if @mega_stone || @mega_move
      return false if has_flag?("CannotDynamax")
      return true
    end