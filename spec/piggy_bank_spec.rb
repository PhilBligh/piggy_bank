require 'piggy_bank'

describe PiggyBank do
  it '.put_coins adds coins to piggy bank' do
    piggy_bank = PiggyBank.new
    expect { piggy_bank.put_coins(10) }.to_not raise_error
  end

  it '.put_coins returns the number of coins' do
    piggy_bank = PiggyBank.new
    expect(piggy_bank.put_coins(10)).to eq(10)
  end

end
