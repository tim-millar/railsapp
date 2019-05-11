# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'requires first_name to be set' do
      expect(subject.valid?).to_not be_truthy
      expect(subject.errors[:first_name].size).to eq(1)
    end

    it 'requires last_name to be set' do
      expect(subject.valid?).to_not be_truthy
      expect(subject.errors[:last_name].size).to eq(1)
    end
  end
end
