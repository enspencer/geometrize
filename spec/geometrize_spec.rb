require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Geometry::Triangle do
  # describe is a test
  # let(parameter-can be any class) for something that will be used below
  let(:a) { 3}
  let(:b) { 4}
  let(:c) { 6}
  let(:good_perimeter) { 13} # defining a variable
  let(:good_area) {5.332682251925386}
  let(:validity) {true}

  subject { Geometry::Triangle.new(a, b, c) }

  # it "should have an area" do
  #   subject.area.should eq 332682251925386
  # end

  # call a method named a on the subject
  its(:a) { should eq 3}
  its(:b) { should eq 4}

  it "should be an instance of geometry Triangle" do
    subject.should be_an_instance_of Geometry::Triangle
  end

  #same as above- don't actually need to test this, Ruby does this
  # it "should have a side 'a' equal to 3" do
  #   subject.a.should eq 3
  # end

  its(:perimeter) { should eq 13}
  its(:area) { should eq 5.332682251925386}
  its(:validity) { should eq true}

  # same as above
  # it "should have a perimeter" do
  #   subject.perimeter.should eq perimeter
  # end

# THIS IS NOT WORKING AND I AM MAD
 #  it "should return an array of the angles" do
 #  	subject.angles.should eq
	# end

end #end triangle describe


describe Geometry::Rectangle do
	let(:d) {3}
	let(:e) {5}
	let(:perimeter) { 16}

  subject { Geometry::Rectangle.new(d, e) }

 	its(:d) { should eq 3}
  its(:e) { should eq 5}

  its(:perimeter) { should eq 16}

  it "should have an area" do
  	subject.area.should eq 15
  end

end #end rect describe

describe Geometry::Circle do
	let(:f) {4}
	let(:circumference) {25.13274122872}

	subject { Geometry::Circle.new(f) }

	its(:f) { should eq 4}
	its(:circumference) { should eq 25.13274122872}

	# same as above
	# it "should have a circumference" do
 	#    subject.circumference.should eq circumference
 	#  end

	it "should have an area" do
	end

end #end circle describe