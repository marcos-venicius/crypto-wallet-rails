# frozen_string_literal: true

def seed(model_name, data = [], &block)
  puts "[SEEDING] #{model_name} - [STARTED]"

  data.each do |element|
    block.call(element)
  end

  puts "[SEEDING] #{model_name} - [FINISHED]"
end

def seed_mining_types
  mining_types_data = [
    {
      description: 'Proof of Work',
      acronym: 'PoW'
    },
    {
      description: 'Proof of Stake',
      acronym: 'PoS'
    },
    {
      description: 'Proof of Capacity',
      acronym: 'PoC'
    }
  ].freeze

  seed 'MINING TYPES', mining_types_data do |mining_type|
    MiningType.find_or_create_by!(mining_type)
  end
end

def seed_coins
  coins_data = [
    {
      description: 'Bitcoin',
      acronym: 'BTC',
      url_image: 'https://static.vecteezy.com/system/resources/previews/008/822/064/original/3d-design-bitcoin-cryptocurrency-white-background-free-png.png',
      mining_type: MiningType.find_by(acronym: 'PoW')
    },
    {
      description: 'Ethereum',
      acronym: 'ETH',
      url_image: 'https://cryptologos.cc/logos/ethereum-eth-logo.png',
      mining_type: MiningType.all.sample
    },
    {
      description: 'DevOne software solutions',
      acronym: 'DEON',
      url_image: 'https://lh3.googleusercontent.com/u/0/drive-viewer/AITFw-wEUuh1AImoksv_oY4APuIet7dAd9LNuAKvexQsatMN2JLmW3ee5v8FC6W7JK2y-UfCUv8-K_qZrVZvnFtL2auL60f2qg=w960-h973',
      mining_type: MiningType.all.sample
    }
  ].freeze

  seed 'COINS', coins_data do |coin|
    Coin.find_or_create_by!(coin)
  end
end

seed_mining_types
seed_coins
