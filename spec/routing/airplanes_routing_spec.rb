# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AirplanesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/airplanes').to route_to('airplanes#index')
    end

    it 'routes to #show' do
      expect(get: '/airplanes/1').to route_to('airplanes#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/airplanes').to route_to('airplanes#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/airplanes/1').to route_to('airplanes#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/airplanes/1').to route_to('airplanes#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/airplanes/1').to route_to('airplanes#destroy', id: '1')
    end
  end
end
