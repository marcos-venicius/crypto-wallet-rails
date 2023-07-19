# frozen_string_literal: true

def seed(model_name, data = [], &block)
  puts "[SEEDING] #{model_name} - [STARTED]"

  data.each do |element|
    block.call(element)
  end

  puts "[SEEDING] #{model_name} - [FINISHED]"
end

COINS_DATA = [
  {
    description: 'Bitcoin',
    acronym: 'BTC',
    url_image: 'https://static.vecteezy.com/system/resources/previews/008/822/064/original/3d-design-bitcoin-cryptocurrency-white-background-free-png.png'
  },
  {
    description: 'Ethereum',
    acronym: 'ETH',
    url_image: 'https://cryptologos.cc/logos/ethereum-eth-logo.png'
  },
  {
    description: 'DevOne software solutions',
    acronym: 'DEON',
    url_image: 'https://lh3.googleusercontent.com/u/0/drive-viewer/AITFw-wEUuh1AImoksv_oY4APuIet7dAd9LNuAKvexQsatMN2JLmW3ee5v8FC6W7JK2y-UfCUv8-K_qZrVZvnFtL2auL60f2qg=w960-h973'
  }
].freeze

MINING_TYPES_DATA = [
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

seed 'COINS', COINS_DATA do |coin|
  Coin.find_or_create_by!(coin)
end

seed 'MINING TYPES', MINING_TYPES_DATA do |mining_type|
  MiningType.find_or_create_by!(mining_type)
end
