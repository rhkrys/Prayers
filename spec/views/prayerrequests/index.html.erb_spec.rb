require 'spec_helper'

describe "prayerrequests/index" do
  before(:each) do
    assign(:prayerrequests, [
      stub_model(Prayerrequest,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(Prayerrequest,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of prayerrequests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
