# frozen_string_literal: true

puts '[SEEDING] COINS - [STARTED]'

Coin.create!(
  description: 'Bitcoin',
  acronym: 'BTC',
  url_image: 'https://static.vecteezy.com/system/resources/previews/008/822/064/original/3d-design-bitcoin-cryptocurrency-white-background-free-png.png'
)

Coin.create!(
  description: 'Ethereum',
  acronym: 'ETH',
  url_image: 'https://cryptologos.cc/logos/ethereum-eth-logo.png'
)

Coin.create!(
  description: 'DevOne software solutions',
  acronym: 'DEON',
  url_image: 'https://lh3.googleusercontent.com/u/0/drive-viewer/AITFw-wEUuh1AImoksv_oY4APuIet7dAd9LNuAKvexQsatMN2JLmW3ee5v8FC6W7JK2y-UfCUv8-K_qZrVZvnFtL2auL60f2qg=w960-h973'
)

puts '[SEEDING] COINS - [FINISHED]'
