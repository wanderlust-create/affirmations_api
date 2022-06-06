require 'rails_helper'

RSpec.describe Affirmation, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:category) }
  end
end
