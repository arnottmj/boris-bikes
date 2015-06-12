require 'bike'

describe Bike do 

  it { expect(subject).to be_working }

  it { expect(subject).to respond_to :report_broken}

  it 'should not be working after being reported broken' do
    bike = Bike.new
    bike.report_broken
    expect(bike).not_to be_working
  end

  
end