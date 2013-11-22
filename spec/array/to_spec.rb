class Array

  def to(position)
    return [] if empty?
    self.slice(0,position)
  end

end

describe Array, "#to" do 
  it "returns an empty array with no items" do 
    expect(%w().to(0)).to eql []
  end

  it "returns the beginning of the array up to position" do 
    expect(%w( a b c d ).to(0)).to eql %w(a)
    expect(%w( a b c d ).to(2)).to eql %w(a b c)
  end
end
