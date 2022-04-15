module Trestle
  module PaperTrail
    module Resource
      extend ActiveSupport::Concern

      included do
        # Include custom #collection method on Resource instance
        prepend Tab

        # Include custom #collection method on Resource class
        singleton_class.send(:prepend, Tab)
      end

      module Tab
        def paper_trail
          tab :versions do
            row { col { 'heyya' } }
          end
        end
      end
    end
  end
end
