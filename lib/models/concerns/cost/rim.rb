module Concerns
  module Cost
    module Rim
      def rims_cost
        (wheels * rim_cost) + rim_service_charge
      end
    
      def rim_cost
        raise 'Please specify the cost of a rim'
      end

      def wheels
        raise 'Not implemented'
      end

      private

      def rim_service_charge
        200
      end
    end
  end
end
