require_relative '../lib/dark_trader'
require 'pry'

describe "the array_hashes_together method" do
  it "should return the crypto price regarding its symbol" do
    result_array = array_hashes_together 
    
    expect(result_array["BTC"]).to eq("...")
    expect(result_array["MATIC"]).to eq("...")
    expect(result_array["SHIB"]).to eq("...")
  end
end