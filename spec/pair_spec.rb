require 'spec_helper'

describe Turnt::Pair do
  it 'should construct itself from a hash' do
    hash = {
      name: 'Macklin Underdown',
      github: 'macklinu',
      email: 'macklin@email.com'
    }

    pair = Turnt::Pair.new hash

    expect(pair.name).to eq 'Macklin Underdown'
    expect(pair.email).to eq 'macklin@email.com'
    expect(pair.github).to eq 'macklinu'
  end
end
