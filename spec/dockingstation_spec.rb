require 'dockingstation'

describe DockingStation do  #subject { DockingStation.new }
  it { is_expected.to respond_to :release_bike }
  it 'gets bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
