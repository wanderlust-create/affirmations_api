require 'rails_helper'
RSpec.describe 'Affirmation API' do
  describe 'GET/ items' do
    before :each do
      # rubocop:disable Lint/UselessAssignment, Layout/LineLength
      aff1 = Affirmation.create!(description: 'I have a vibrant and successful love life; I am deeply admired.', category: 'career')
      aff2 = Affirmation.create!(description: 'I have the power to create all the success and prosperity I desire.', category: 'career')
      aff3 = Affirmation.create!(description: 'I let go of old, negative beliefs that have stood in the way of my success.', category: 'career')
      aff4 = Affirmation.create!(description: 'My mind is free of resistance and open to exciting new possibilities.', category: 'career')
      aff5 = Affirmation.create!(description: 'I am worthy of all the good life has to offer, and I deserve to be successful.', category: 'career')
      aff6 = Affirmation.create!(description: 'I believe in myself and my ability to succeed.', category: 'career')
      aff7 = Affirmation.create!(description: 'I am grateful for all my skills and talents that serve me so well.', category: 'career')
      aff8 = Affirmation.create!(description: 'The universe is filled with endless opportunities for me and my career.', category: 'career')
      aff9 = Affirmation.create!(description: 'I am always open minded and eager to explore new avenues to success.', category: 'career')
      aff10 = Affirmation.create!(description: 'I recognize opportunity when it knocks and seize the moment.', category: 'career')
      aff11 = Affirmation.create!(description: 'I am well organized and manage my time with expert efficiency.', category: 'career')
      aff12 = Affirmation.create!(description: 'I am committed to achieving success in every area of my life.', category: 'career')
      aff13 = Affirmation.create!(description: 'My ambitions are in perfect alignment with my personal values.', category: 'career')
      aff14 = Affirmation.create!(description: 'I choose to think loving thoughts about everyone and everything in my life.', category: 'relationships')
      aff15 = Affirmation.create!(description: 'All my relationships are loving, harmonious, intimate, and successful.', category: 'relationships')
      aff16 = Affirmation.create!(description: 'I easily give love and receive love; my relationships with my friends and family are accepting and loving.', category: 'relationships')
      aff17 = Affirmation.create!(description: 'I???m respected and loved by my friends.', category: 'relationships')
      aff18 = Affirmation.create!(description: 'I love, cherish and respect, all my friends.', category: 'relationships')
      aff19 = Affirmation.create!(description: 'My friends add to my happiness.', category: 'relationships')
      aff20 = Affirmation.create!(description: 'I???m a source of joy for my friends.', category: 'relationships')
      aff21 = Affirmation.create!(description: 'I always remember to give time to my friends.', category: 'relationships')
      aff22 = Affirmation.create!(description: 'I have so many fun moments with my friends.', category: 'relationships')
      aff23 = Affirmation.create!(description: 'My friends and I share a mutual bond of trust.', category: 'relationships')
      aff23 = Affirmation.create!(description: 'I???m thankful for all of my wonderful friends.', category: 'relationships')
      aff24 = Affirmation.create!(description: 'Making new friendships is very easy for me.', category: 'relationships')
      aff25 = Affirmation.create!(description: 'People feel comfortable interacting with me.', category: 'relationships')
      aff26 = Affirmation.create!(description: 'I have healthy boundaries in my entire friend circle.', category: 'relationships')
      aff26 = Affirmation.create!(description: 'I resort to making peace with my friend despite any conflicts.', category: 'relationships')
      aff27 = Affirmation.create!(description: 'My friends bring me peace and sheer happiness.', category: 'relationships')
      aff28 = Affirmation.create!(description: 'I like myself for who I???ve become.', category: 'relationships')
      aff29 = Affirmation.create!(description: 'I deserve love and affection.', category: 'love')
      aff30 = Affirmation.create!(description: 'I love myself and am open to love.', category: 'love')
      aff31 = Affirmation.create!(description: 'I love to give and receive love.', category: 'love')
      aff32 = Affirmation.create!(description: 'I receive love in abundance from everyone I meet.', category: 'love')
      aff33 = Affirmation.create!(description: 'The more love I give, the more I receive.', category: 'love')
      aff34 = Affirmation.create!(description: 'I trust the Universe to help me find true love.', category: 'love')
      aff35 = Affirmation.create!(description: 'There is so much love in my life.', category: 'love')
      aff36 = Affirmation.create!(description: 'I feel surrounded by love everywhere.', category: 'love')
      aff37 = Affirmation.create!(description: 'I am grateful for all the love and affection I get.', category: 'love')
      aff38 = Affirmation.create!(description: 'I love myself as I am.', category: 'love')
      aff39 = Affirmation.create!(description: 'I love who I am am so does my partner.', category: 'love')
      aff40 = Affirmation.create!(description: 'I find love everywhere I go.', category: 'love')
      aff42 = Affirmation.create!(description: 'My heart is prepared to receive love.', category: 'love')
      # rubocop:enable Lint/UselessAssignment, Layout/LineLength
    end

    it 'sends a list of all affirmations' do
      search_by = { category: 'all' }
      get '/api/v1/affirmations', params: search_by

      expect(response).to have_http_status(200)
      items = JSON.parse(response.body, symbolize_names: true)
      expect(items[:data].count).to eq(43)
      items[:data].each do |item|
        expect(item[:id]).to be_a String
        expect(item[:type]).to eq('affirmation')
        expect(item[:attributes]).to have_key(:description)
        expect(item[:attributes][:description]).to be_a String
      end
    end

    it 'will send categorized affirmations' do
      search_by = { category: 'career' }
      get '/api/v1/affirmations', params: search_by

      expect(response).to have_http_status(200)
      items = JSON.parse(response.body, symbolize_names: true)
      expect(items[:data].count).to eq(13)
      items[:data].each do |item|
        expect(item[:id]).to be_a String
        expect(item[:type]).to eq('affirmation')
        expect(item[:attributes]).to have_key(:description)
        expect(item[:attributes][:description]).to be_a String
      end
    end
  end
end
