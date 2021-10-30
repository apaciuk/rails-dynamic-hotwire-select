require "test_helper"

describe AddressesController do
  let(:address) { addresses(:one) }

  it "should get index" do
    get addresses_url
    must_respond_with :success
  end

  it "should get new" do
    get new_address_url
    must_respond_with :success
  end

  it "should create address" do
    assert_difference("Address.count") do
      post addresses_url, params: { address: { country: @address.country, state: @address.state } }
    end

    must_redirect_to address_url(Address.last)
  end

  it "should show address" do
    get address_url(@address)
    must_respond_with :success
  end

  it "should get edit" do
    get edit_address_url(@address)
    must_respond_with :success
  end

  it "should update address" do
    patch address_url(@address), params: { address: { country: @address.country, state: @address.state } }
    must_redirect_to address_url(address)
  end

  it "should destroy address" do
    assert_difference("Address.count", -1) do
      delete address_url(@address)
    end

    must_redirect_to addresses_url
  end
end
