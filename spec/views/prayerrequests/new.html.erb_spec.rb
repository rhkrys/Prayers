require 'spec_helper'

describe "prayerrequests/new" do
  before(:each) do
    assign(:prayerrequest, stub_model(Prayerrequest,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new prayerrequest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prayerrequests_path, "post" do
      assert_select "input#prayerrequest_title[name=?]", "prayerrequest[title]"
      assert_select "textarea#prayerrequest_description[name=?]", "prayerrequest[description]"
    end
  end
end
