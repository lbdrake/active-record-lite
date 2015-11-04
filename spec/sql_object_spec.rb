require 'file_list'
require 'securerandom'

describe SQLObject do
  before(:each) { DBConnection.reset }
  after(:each) { DBConnection.reset }

  before(:each) do
    class City < SQLObject
      self.finalize!
    end

    class Country < SQLObject
      self.table_name = 'countries'

      self.finalize!
    end
  end

  describe '::set_table/::table_name' do
    it '::set_table_name sets table name' do
      expect(Country.table_name).to eq('countries')
    end

    it '::table_name generates default name' do
      expect(City.table_name).to eq('cities')
    end
  end

  describe '::columns' do
    it '::columns gets the columns from the table and symbolizes them' do
      expect(City.columns).to eq([:id, :name, :country_code, :district, :population])
    end

    it '::columns creates getter methods for each column' do
      c = City.new
      expect(c.respond_to? :random_method_name).to be false
      expect(c.respond_to? :name).to be true
      expect(c.respond_to? :id).to be true
      expect(c.respond_to? :country_code).to be true
    end

    it '::columns creates setter methods for each column' do
      c = City.new
      c.name = "United States of Developers"
      c.id = 5000
      c.country_code = 'NLD'
      expect(c.name).to eq 'United States of Developers'
      expect(c.id).to eq 5000
      expect(c.country_code).to eq 'NLD'
    end

    it '::columns created setter methods use attributes hash to store data' do
      c = City.new
      c.name = "United States of Code"
      expect(c.instance_variables).to eq [:@attributes]
      expect(c.attributes[:name]).to eq 'United States of Code'
    end
  end

  describe '#initialize' do
    it '#initialize properly sets values' do
      c = City.new(name: 'San Francoder', id: 5000, population: 1000, country_code: 'USA')
      expect(c.name).to eq 'San Francoder'
      expect(c.id).to eq 5000
      expect(c.population). to eq 1000
      expect(c.country_code).to eq "USA"
    end

    it '#initialize throws the error with unknown attr' do
      expect do
        City.new(best_restaurant: 'Slanted Code')
      end.to raise_error "unknown attribute 'best_restaurant'"
    end
  end

  describe '::parse_all' do
    it '::parse_all turns an array of hashes into objects' do
      hashes = [
        { name: 'city1', country_code: "DEU" },
        { name: 'city2', country_code: "AUT" }
      ]

      cities = City.parse_all(hashes)
      expect(cities.length).to eq(2)
      hashes.each_index do |i|
        expect(cities[i].name).to eq(hashes[i][:name])
        expect(cities[i].country_code).to eq(hashes[i][:country_code])
      end
    end
  end

  describe '::all/::find' do
    it '::all returns all the cities' do
      cities = City.all

      expect(cities.count).to eq(300)
      cities.all? { |city| expect(city).to be_instance_of(City) }
    end

    it '::find finds objects by id' do
      c = City.find(1)

      expect(c).not_to be_nil
      expect(c.name).to eq('Kabul')
    end

    it '::find returns nil if no object has the given id' do
      expect(City.find(345)).to be_nil
    end
  end

  describe '#insert' do
    let(:city) { City.new(name: 'Codeland', country_code: 'USA', district: 'East Bay', population: 777) }

    before(:each) { city.insert }

    it '#insert inserts a new record' do
      expect(City.all.count).to eq(301)
    end

    it '#insert sets the id' do
      expect(city.id).to_not be_nil
    end

    it '#insert creates record with proper values' do
      # pull the city again
      retreived_city = City.find(city.id)

      expect(retreived_city.name).to eq('Codeland')
      expect(retreived_city.country_code).to eq('USA')
    end
  end

  describe '#update' do
    it '#update changes attributes' do
      country = Country.find_by_code("KEN")

      country.name = 'KenyaWithPenguins'
      country.continent_code = 'Antarctica'

      # pull the country again
      country = Country.find_by_code("KEN")
      expect(country.name).to eq('KenyaWithPenguins')
      expect(country.continent_code).to eq('Antarctica')
    end
  end

  describe '#save' do
    it '#save calls save/update as appropriate' do
      country = Country.new
      expect(country).to receive(:insert)
      country.save

      country = Country.find_by_code("CHN")
      expect(country).to receive(:update)
      country.save
    end
  end
end
