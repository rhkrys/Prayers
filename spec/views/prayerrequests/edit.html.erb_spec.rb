require 'spec_helper'

describe "prayerrequests/edit" do
  before(:each) do
    @prayerrequest = assign(:prayerrequest, stub_model(Prayerrequest,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit prayerrequest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prayerrequest_path(@prayerrequest), "post" do
      assert_select "input#prayerrequest_title[name=?]", "prayerrequest[title]"
      assert_select "textarea#prayerrequest_description[name=?]", "prayerrequest[description]"
    end
  end
end
