require 'rails_helper'

RSpec.describe PassengersController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'flights/1/passengers').to route_to('passengers#index', flight_id: '1')
    end

    it 'routes to #show' do
      expect(get: 'flights/1/passengers/1').to route_to('passengers#show', id: '1', flight_id: '1')
    end

    it 'routes to #create' do
      expect(post: 'flights/1/passengers').to route_to('passengers#create', flight_id: '1')
    end

    it 'routes to #update via PUT' do
      expect(put: 'flights/1/passengers/1').to route_to('passengers#update', id: '1', flight_id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'flights/1/passengers/1').to route_to('passengers#update', id: '1', flight_id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: 'flights/1/passengers/1').to route_to('passengers#destroy', id: '1', flight_id: '1')
    end
  end
end
