require File.join(File.dirname(__FILE__), '/../lib/calc')

describe Calc do

  before do
    @calc = Calc.new
  end


  context "#add" do

    it "returns 210 when 202 and 8 are passed" do
      @calc.add(202,8).should == 210
    end

    it "returns 10 when 2 and 8 are passed" do
      @calc.add(2,8).should == 10
    end

  end

  context "#evaluate" do

    context "#addition" do

      it "returns 9 for 2+7" do
        @calc.evaluate("2+7").should == 9
      end

      it "returns 9 for 2+7+28" do
        @calc.evaluate("2+7+28").should == 37
      end


    end

    context "#subtraction" do

      it "returns 9 for 22-13" do
        @calc.evaluate("22-13").should == 9
      end

      it "returns 9 for 2+7+28" do
        @calc.evaluate("2+7+28-20").should == 17
      end

    end

    context "#multiplication" do

      it "returns 99 for 11*9" do
        @calc.evaluate("11*9").should == 99
      end

      it "returns 11 for 2+7*2-5" do
        @calc.evaluate("2+7*2-5").should == 11
      end

    end

    context "#division" do

      it "returns 9 for 99/11" do
        @calc.evaluate("99/11").should == 9
      end

      it "returns 11 for 2+7*2-5+6/2" do
        @calc.evaluate("2+7*2-5+6/2").should == 14
      end

    end

    context "#power" do

      it "returns 1024 for 2^10" do
        @calc.evaluate("2^10").should == 1024
      end
    end


  end

end

describe String do
  it "returns 5 for 2+3" do
    "2+3".reduce('+', proc{|x, y| x + y }, proc{|expr| expr.to_i}).should == 5
  end
end
