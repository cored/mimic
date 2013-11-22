class Array
  def third
    self[2]
  end
end

describe Array, "#third" do 
  it 'returns the third element of an array' do 
    expect(%w( a b c d e).third).to eql "c"
  end
end
