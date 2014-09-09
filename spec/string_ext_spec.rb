# encoding: utf-8

require 'string_ext'

describe 'String#to_bool' do
  it 'asserts true to "y | yes | 1 | true | t"' do
    expect("y".to_bool).to eq true
    expect("yes".to_bool).to eq true
    expect("true".to_bool).to eq true
    expect("t".to_bool).to eq true
    expect("1".to_bool).to eq true
  end

  it 'asserts false to the strings "n | no | false | f | 0"' do
    expect("n".to_bool).to eql false
    expect("no".to_bool).to eql false
    expect("false".to_bool).to eql false
    expect("f".to_bool).to eql false
    expect("0".to_bool).to eql false
  end

  it 'throws ArgumentError for any other String' do
    expect { "foo".to_bool }.to raise_error
  end
end

describe 'String#is_numeric?' do
  it 'has a method #is_numeric?' do
    expect { "foo".is_numeric? }.not_to raise_error
  end
  it 'returns true if a string is a number' do
    expect('1'.is_numeric?).to eq true
    expect('0.123'.is_numeric?).to eq true
    expect('123E123'.is_numeric?).to eq true
  end
  it 'returns false if a string is not a number' do
    expect('foo'.is_numeric?).to eq false
    expect(''.is_numeric?).to eq false
  end
end

describe 'String#to_url' do
  it 'returns a url if called to_url upon' do
    expect('mühsam Große Türen'.to_url).to eql 'muehsam-grosse-tueren'
  end

  it 'cleans up any letters beside a-z' do
    expect('#+++#<x, foo'.to_url).to eql 'x-foo'
    expect('bahia_azul'.to_url).to eql 'bahia-azul'
  end

  it 'leaves numbers alone' do
    expect('123-zimmer'.to_url).to eql '123-zimmer'
  end
end
