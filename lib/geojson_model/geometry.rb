require 'geojson_model/base'

module GeojsonModel
  class Geometry
    include Base

    attribute :type, String
    attribute :coordinates, Array

    # @return [Feature]
    def to_feature
      Feature.new(geometry: self)
    end
  end
end
