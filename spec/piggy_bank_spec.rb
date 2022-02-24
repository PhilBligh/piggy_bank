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

  it 'shake method returns "cling"' do
    piggy_bank = PiggyBank.new
    expect(piggy_bank.shake).to eq nil
    piggy_bank.put_coins(1)
    expect(piggy_bank.shake).to eq "cling"
  end

  it '.break to return the amount of coins in the piggy bank' do
    piggy_bank = PiggyBank.new
    expect(piggy_bank.break).to eq(0)
    piggy_bank.put_coins(10)
    expect(piggy_bank.break).to eq(10)
  end

end
