# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Coin model' do
  context 'when creating a new coin' do
    it 'cannot be created with invalid url' do
      coin = Coin.new(url_image: 'invalid_url', description: 'my description', acronym: 'ACRONYM')
      expect(coin).to be_invalid
      expect(coin.errors[:url_image]).to include('invalid URL')
    end

    it 'cannot be created with short description' do
      coin = Coin.new(url_image: 'http://test.com', description: '12', acronym: 'ACRONYM')
      expect(coin).to be_invalid
      expect(coin.errors[:description]).to include('description is too short')
    end

    it 'cannot be created with long description' do
      coin = Coin.new(url_image: 'http://test.com', description: 'a' * 201, acronym: 'ACRONYM')
      expect(coin).to be_invalid
      expect(coin.errors[:description]).to include('description is too long')
    end

    it 'cannot be created with invalid acronym format' do
      coin = Coin.new(url_image: 'http://test.com', description: 'abcdefg', acronym: 'asdf')
      expect(coin).to be_invalid
      expect(coin.errors[:acronym]).to include('invalid acronym format')
    end

    it 'can be created with everything valid' do
      coin = Coin.new(url_image: 'http://test.com', description: 'my description', acronym: 'ACRONYM')
      expect(coin).to be_valid
    end
  end
end
