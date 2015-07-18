require 'spec_helper'

describe Turn::User do
  describe '#email' do
    it 'should return `git config --global --get user.email`' do
      user = Turn::User.new
      allow(Git).to receive(:global_config)
                        .with('user.email')
                        .and_return('macklin@user.com')
      expect(user.email).to eq 'macklin@user.com'
    end
  end
  describe '#name' do
    it 'should return `git config --global --get user.name`' do
      user = Turn::User.new
      allow(Git).to receive(:global_config)
                        .with('user.name')
                        .and_return('Macklin Underdown')
      expect(user.name).to eq 'Macklin Underdown'
    end
  end
  describe '#github' do
    it 'should return `git config --global --get github.user`' do
      user = Turn::User.new
      allow(Git).to receive(:global_config)
                        .with('github.user')
                        .and_return('macklinu')
      expect(user.github).to eq 'macklinu'
    end
  end
end
