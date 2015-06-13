require 'van'
require_relative './support/shared_examples_for_bike_container'

describe Van do
  let(:bike) {Bike.new}

  it_behaves_like BikeContainer

  it 'will respond to load' do
    expect(subject).to respond_to(:load).with(1).argument

  end

  it 'will not load bikes when full' do
    bike.report_broken
    expect(subject).to receive(:full?) {true}
    expect{subject.load(bike)}.to raise_error 'The van is full'

  end

  it 'will not load working bikes' do
    expect{subject.load(bike)}.to raise_error 'The bike is not broken'
  end






end
