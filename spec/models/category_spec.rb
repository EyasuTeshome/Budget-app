require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.create(name: 'Eyasu Teshome', email: 'njupt@mail.com', password: 'password') }
  let(:category) { Category.create(name: 'Shopping', icon: 'https://i.imgur.com/Ar3Lf3Dt.png', user_id: user.id) }

  describe 'Validations' do
    context 'when valid' do
      it { expect(category).to be_valid }
    end

    it 'should allow valid name' do
      category.name = 'Eyasu'
      expect(category).to be_valid
    end

    it 'should allow valid user_id' do
      category.user_id = nil
      expect(category).to_not be_valid
    end
  end
end
