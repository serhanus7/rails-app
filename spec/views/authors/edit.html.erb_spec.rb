require 'rails_helper'

RSpec.describe "authors/edit", type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :name => "MyString",
      :city => "MyString",
      :books_number => 1
    ))
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do

      assert_select "input[name=?]", "author[nameA]"

      assert_select "input[name=?]", "author[city]"

      assert_select "input[name=?]", "author[books_number]"
    end
  end
end
