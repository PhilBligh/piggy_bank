class PiggyBank
  def initialize
    @coins = 0
  end

  def put_coins(coins_to_add)
    @coins += coins_to_add
  end

  def shake
    return "cling" if @coins >= 1
  end

  def break
    @coins
  end
  
end