require('rspec')
require('pry')
require('word_count')

describe('String#word_count') do
  it('take users input then count the most common word') do
    expect("world".word_count("world")).to(eq(1))
  end
  it("it checks string for word count") do
    expect("Dog like human and human likes dog".word_count("dog")).to(eq(2))
  end
end
