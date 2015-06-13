require 'garage'
require_relative './support/shared_examples_for_bike_container'

describe Garage do

  let(:bike) {Bike.new}

  it_behaves_like BikeContainer


  it 'fixes broken bikes' do

    bike.report_broken
    subject.add_bike bike
    subject.fix_bikes
    expect(bike).to be_working

  end

end
