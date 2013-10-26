describe "ENV_VARS" do
  it "has YAML entries" do
    ENV_VARS["age"].should == 33
    ENV_VARS["name"].should == "John Smith"
  end
end
