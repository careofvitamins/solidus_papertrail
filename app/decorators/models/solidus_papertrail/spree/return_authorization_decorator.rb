module SolidusPapertrail
  module Spree
    module ReturnAuthorizationDecorator
      def self.prepended(mod)
        mod.include ::Spree::Versionable
        mod.has_paper_trail versions: { class_name: 'Spree::ReturnAuthorizationVersion' }, on: %i[create update destroy]
      end

      ::Spree::ReturnAuthorization.prepend self
    end
  end
end
