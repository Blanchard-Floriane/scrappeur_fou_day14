require_relative '../lib/dark_trader'
require 'pry'

describe "the array_hashes_together method" do
  it "should return TRUE if the symbol its here" do
    result_array = array_hashes_together 
    
    expect(result_array["BTC"]).to eq("TRUE") #as every price is always changing we only can check if the crypto is here
    expect(result_array["MATIC"]).to eq("TRUE")
    expect(result_array["SHIB"]).to eq("TRUE")
  end
end