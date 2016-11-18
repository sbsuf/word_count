require('rspec')
require('pry')
require('word_count')

describe('String#word_count') do
  it('take users input then count the most common word') do
    expect("world".word_count("world")).to(eq(1))
  end
end
