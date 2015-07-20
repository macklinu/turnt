require 'spec_helper'

describe Turnt::User do
  describe '#email' do
    it 'should return `git config --global --get user.email`' do
      allow(Turnt::GitUtils).to receive(:global_config)
                        .with('user.email')
                        .and_return('macklin@user.com')

      expect(Turnt::User.email).to eq 'macklin@user.com'
    end
  end
  describe '#name' do
    it 'should return `git config --global --get user.name`' do
      allow(Turnt::GitUtils).to receive(:global_config)
                        .with('user.name')
                        .and_return('Macklin Underdown')

      expect(Turnt::User.name).to eq 'Macklin Underdown'
    end
  end
  describe '#github' do
    it 'should return `git config --global --get github.user`' do
      allow(Turnt::GitUtils).to receive(:global_config)
                        .with('github.user')
                        .and_return('macklinu')

      expect(Turnt::User.github).to eq 'macklinu'
    end
  end
end
