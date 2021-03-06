require 'geojson_model/base'

module GeojsonModel
  class FeatureCollection
    include Base

    attribute :type,     String, default: 'FeatureCollection'
    attribute :features, Array[GeojsonModel::Feature]

    # @return [GeometryCollection]
    def to_geometry_collection
      GeometryCollection.new(geometries: features.map(&:geometry))
    end
  end
end
