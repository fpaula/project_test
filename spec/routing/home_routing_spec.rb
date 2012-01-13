require 'spec_helper'

describe "home routing" do
  it "routes /home should be root" do
    { :get => "/" }.should route_to(
      :controller => "home",
      :action => "index"
    )
  end
end