require 'dockingstation'

describe DockingStation do  #subject { DockingStation.new }
  it { is_expected.to respond_to :release_bike }
  it 'gets bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to :bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
end
