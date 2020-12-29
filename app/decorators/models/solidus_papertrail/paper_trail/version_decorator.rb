module SolidusPapertrail
  module PaperTrail
    module VersionDecorator
      def self.prepended(mod)
        mod.abstract_class = true
      end

      ::PaperTrail::Version.prepend self
    end
  end
end
