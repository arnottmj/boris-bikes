require 'docking_station'
require_relative './support/shared_examples_for_bike_container'

describe DockingStation do

  it_behaves_like BikeContainer

  it 'will raise an error when empty' do
    expect{subject.release_bike}.to raise_error 'No bikes available'

  end

  it 'will respond to dock' do

    expect(subject).to respond_to(:dock).with(1).argument

  end

  it 'will only release working bikes' do

    broken_bike = Bike.new
    broken_bike.report_broken
    working_bike = Bike.new
    working_bike.report_broken
    subject.dock(working_bike)
    subject.dock(broken_bike)

    expect{subject.release_bike}.to raise_error 'No bikes available'


  end




end
