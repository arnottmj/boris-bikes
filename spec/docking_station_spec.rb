require 'docking_station'
require_relative './support/shared_examples_for_bike_container'

describe DockingStation do

  it_behaves_like BikeContainer

  it 'releasing a bike will raise an error when empty' do
    expect{subject.release_bike}.to raise_error 'No bikes available'

  end

  it 'will respond to dock' do

    expect(subject).to respond_to(:dock).with(1).argument

  end

  it 'will release a working bike' do

    bike = double :bike, broken?: false
    subject.dock (bike)
    expect(subject.release_bike).to eq bike

  end

  it 'will not release a broken bike' do

    bike = double :bike, broken?: true
    subject.dock (bike)
    expect{subject.release_bike}.to raise_error "No bikes available"

  end

  it 'will release a broken bike for fixing' do
    bike = double :bike, working?: false
    subject.dock (bike)
    expect(subject.release_broken_bike_for_fixing).to eq bike

  end

  it 'will not release a broken bike for fixing when empty' do
    expect{subject.release_broken_bike_for_fixing}.to raise_error "No bikes available"

  end




end
