
require File.expand_path("../../helper.rb", __FILE__)

describe Ashton::Framebuffer do
  before :all do
    $window ||= Gosu::Window.new 16, 16, false
    @testcard_image = Gosu::Image.new $window, media_path("simple.png")
  end

  before :each do
    @subject = described_class.new 16, 12
  end

  describe "width" do
    it "should be initially set" do
      @subject.width.should be 16
    end
  end

  describe "height" do
    it "should be initially set" do
      @subject.height.should be 12
    end
  end

  describe "render" do
    it "should fail without a block" do
      ->{ @subject.render }.should raise_error ArgumentError
    end

    it "should passing itself into the block" do
      buffer = nil
      @subject.render do |fb|
        buffer = fb
      end

      buffer.should eq @subject
    end

    it "should bind the rendering during the block" do
      pending
    end

    it "should reset to rendering to the window after the block" do
      pending
    end

    it "should fail without a block" do
      lambda { @subject.render }.should raise_error ArgumentError
    end
  end

  describe "clear" do
    it "should clear the buffer to transparent" do
      pending
    end

    it "should clear the buffer to a specified color" do
      pending
    end
  end

  describe "draw" do
    pending
  end

  describe "to_image" do
    before :each do
      @image = @subject.to_image
    end

    it "should create an image of the appropriate size" do
      @image.width.should eq 16
      @image.height.should eq 12
    end

    it "should create an image of the appropriate size" do
      @image.width.should eq 16
      @image.height.should eq 12
    end
  end

  describe "init_framebuffer" do
    it "should create a framebuffer object and a color buffer" do
      pending
      mock(@subject).init_framebuffer_texture
    end
  end

  describe "init_framebuffer_texture" do
    pending
  end

  describe "delete" do
    pending
  end
end