RSpec.describe Theater, type: :model do
  it 'has a name' do
    @amc = Theater.create(name: 'AMC', adress:
      'Granite Run Mall 8')
    expect(@amc.name).to eq('AMC')
  end

  it 'has an address' do
    @amc = Theater.create(name: 'AMC', adress:
      'Granite Run Mall 8')
    expect(@amc.adress).to eq(
      'Granite Run Mall 8'
    )
  end
end
