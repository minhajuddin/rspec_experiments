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

      #it "returns 9 for 2+7+28" do
      #@calc.evaluate("2+7+28").should == 37
      #end

    end

  end

end
