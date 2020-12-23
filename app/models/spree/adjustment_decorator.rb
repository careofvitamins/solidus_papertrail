module Spree
  Adjustment.class_eval do
    include Spree::Versionable
    has_paper_trail versions: { class_name: 'Spree::AdjustmentVersion' }, on: %i[create update destroy]
  end
end
