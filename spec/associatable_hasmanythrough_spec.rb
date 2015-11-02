require 'file_list'

describe 'Associatable' do
  before(:each) { DBConnection.reset }
  after(:each) { DBConnection.reset }

  before(:all) do
    class City < SQLObject
      self.table_name = 'cities'
      belongs_to :country, class_name: 'Country', primary_key: :code, foreign_key: :country_code

      finalize!
    end

    class Country < SQLObject
      self.table_name = 'countries'

      has_many :cities, class_name: 'City', primary_key: :code, foreign_key: :country_code
      belongs_to :continent, class_name: 'Continent', primary_key: :code, foreign_key: :continent_code

      finalize!
    end

    class Continent < SQLObject
      self.table_name = 'continents'
      has_many :countries, class_name: 'Country', primary_key: :code, foreign_key: :continent_code

      finalize!
    end
  end

  describe '::assoc_options' do
    it 'defaults to empty hash' do
      class TempClass < SQLObject
      end

      expect(TempClass.assoc_options).to eq({})
    end

    it 'stores `belongs_to` options' do
      city_assoc_options = City.assoc_options
      country_options = city_assoc_options[:country]

      expect(country_options).to be_instance_of(BelongsToOptions)
      expect(country_options.foreign_key).to eq(:country_code)
      expect(country_options.class_name).to eq('Country')
      expect(country_options.primary_key).to eq(:code)
    end

    it 'stores options separately for each class' do
      expect(City.assoc_options).to have_key(:country)
      expect(Country.assoc_options).to_not have_key(:country)

      expect(Country.assoc_options).to have_key(:continent)
      expect(City.assoc_options).to_not have_key(:continent)
    end
  end

  describe '#has_one_through' do
    before(:all) do
      class City
        has_one_through :continent, :country, :continent

        self.finalize!
      end
    end

    let(:city) { City.find(1) }

    it 'adds getter method' do
      expect(city).to respond_to(:continent)
    end

    it 'fetches associated `continent` for a `City`' do
      continent = city.continent

      expect(continent).to be_instance_of(Continent)
      expect(continent.code).to eq('Asia')
    end
  end
end
