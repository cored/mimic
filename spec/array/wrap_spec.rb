class Array
  def wrap(obj)
    return [] if obj.nil?
    if obj.respond_to? :to_ary
      obj.to_ary 
    else
      self << obj 
    end
  end
end

describe Array, '#wrap' do 

  describe 'wraps its argument in an array unless is an already an array' do 
    context 'if the argument is nil' do 
      it 'returns an empty list' do 
        expect([].wrap(nil)).to be_eql []
      end
    end

    context 'if argument respond to_ary' do 
      it 'returns to_ary resulted invocation' do 
        expect([].wrap([1,2,3,4])).to be_eql [1,2,3,4]
      end
    end

    context 'if argument doesnt respond to_ary' do 
      it 'returns an array with the argument as its single element' do 
        expect([].wrap(0)).to be_eql [0]
      end
    end

  end

end
