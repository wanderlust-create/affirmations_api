module Api
  module V1
    class AffirmationsController < ApplicationController
      def index
        if params[:category] == 'all'
          render json: AffirmationSerializer.new(Affirmation.all)
        else
          render json: AffirmationSerializer.new(Affirmation.where(category: params[:category]))
        end
      end
    end
  end
end
