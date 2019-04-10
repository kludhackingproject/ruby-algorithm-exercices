require_relative '../lib/cesar_cipher'

describe "Method Cesar" do
  it "should return the text under Cesar convertion" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("Hello", 2)).to eq("Jgnnq")
    expect(caesar_cipher("Hello", 0)).to eq("Hello")
    expect(caesar_cipher("Hello", 27)).to eq("It's not an int, the number is too high or the number is to low (0 to 26 is require)!!")
    expect(caesar_cipher("Hello", 43)).to eq("It's not an int, the number is too high or the number is to low (0 to 26 is require)!!")
    expect(caesar_cipher("Hello", -1)).to eq("It's not an int, the number is too high or the number is to low (0 to 26 is require)!!")
  end
end
