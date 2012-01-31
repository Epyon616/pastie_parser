require 'spec_helper'

describe PastieParser do
  it "should convert a Pastie url if one exists" do
    text = "This is some text http://pastie.org/1234567 here is some more text"
    PastieParser::Parse.parse(text).should == "This is some text <script src=\"http://pastie.org/1234567.js\" type=\"text/javascript\"></script> here is some more text"
  end

  it "should convert a Gist url if one exists" do
    text = "This is some text https://gist.github.com/1234567 this is some more text"
    PastieParser::Parse.parse(text).should == "This is some text <script src=\"https://gist.github.com/1234567.js\" type=\"text/javascript\"></script> this is some more text"
  end

  it "should parse both if they both appear" do
    text = "This is some text http://pastie.org/1234567 here's some more text https://gist.github.com/1234567 oh noes not more text still!"
    PastieParser::Parse.parse(text).should == "This is some text <script src=\"http://pastie.org/1234567.js\" type=\"text/javascript\"></script> here's some more text <script src=\"https://gist.github.com/1234567.js\" type=\"text/javascript\"></script> oh noes not more text still!"
  end

  it "should leave anything that is not a pastie or gist alone" do
    text = "This is some text, you know I\'m text so what are you looking at?"
    PastieParser::Parse.parse(text).should == text
  end
end
