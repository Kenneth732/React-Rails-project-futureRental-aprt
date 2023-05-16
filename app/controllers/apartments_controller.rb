class ApartmentsController < ApplicationController
    before_action :authorize
    skip_before_action :authorize, only: [:index]
    
    def index
      apartments = Apartment.all 
      render json: apartments
    end
  
    def show
      apartment = Apartment.find(params[:id])
      render json: apartment 
    end
  
    def summary
        apartment = Apartment.find(params[:id])
        render json: apartment, serializer: ApartmentSummarySerializer
      end
      def summaries
        apartment = Apartment.all 
        render json: apartment, each_serializer: ApartmentSummarySerializer 
      end
  
    private
  
    def apartment_params
    end
  end
  