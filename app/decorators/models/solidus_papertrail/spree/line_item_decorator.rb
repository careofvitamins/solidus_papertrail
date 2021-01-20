module SolidusPapertrail
  module Spree
    module LineItemDecorator
      def self.prepended(mod)
        mod.include ::Spree::Versionable
        mod.has_paper_trail versions: { class_name: 'Spree::LineItemVersion' }, on: %i[create update destroy]
      end

      ::Spree::LineItem.prepend self
    end
  end
end
