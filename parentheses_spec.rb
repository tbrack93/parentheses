require 'rspec'
require_relative 'parentheses'

RSpec.describe "method passed empty string" do
  it 'should return true' do
    result = valid_parentheses("")
    expect(result).to eq(true)
  end
end

RSpec.describe "method passed one ) and no (" do
  it 'should return false' do
    result = valid_parentheses(")")
    expect(result).to eq(false)
  end
end

RSpec.describe "method passed one ) and then one (" do
  it 'should return false' do
    result = valid_parentheses(")(")
    expect(result).to eq(false)
  end
end

RSpec.describe "method passed equal number of brackets but in wrong order" do
  it 'should return false' do
    result = valid_parentheses("(()))(")
    expect(result).to eq(false)
  end
end

RSpec.describe "method passed equal number of brackets in correct order" do
  it 'should return true' do
    result = valid_parentheses("(()())")
    expect(result).to eq(true)
  end
end

RSpec.describe "method passed word within valid brackets" do
  it 'should return true' do
    result = valid_parentheses("((hello)())")
    expect(result).to eq(true)
  end
end

RSpec.describe "method passed word within invalid brackets" do
  it 'should return true' do
    result = valid_parentheses("())(hello)())")
    expect(result).to eq(false)
  end
end


