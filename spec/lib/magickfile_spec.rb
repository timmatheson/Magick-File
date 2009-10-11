require File.dirname(__FILE__) + '/../spec_helper'

describe File, "that is a gif" do  
  before :each do
    @file = File.open(File.dirname(__FILE__) + "/../images/rubybook.gif","r")
    @valid_attributes = {
      :path => @file.path, 
      :name => @file.name, 
      :format => @file.format, 
      :width => @file.width, 
      :height => @file.height, 
      :size => @file.size
    }
  end
  
  it "should recieve info and return a hash of attributes" do
    @file.info.should == @valid_attributes
  end
  
  it "should rotate the image" do
    rotated_path = @file.path.gsub(/\.gif/,'-rotated.gif')
    FileUtils.cp(@file.path, rotated_path)
    file_copy = File.open(rotated_path,"w")
    file_copy.rotate!
    file_copy.info.should != @file.info
  end
end