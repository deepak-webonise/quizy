module Api
  module V1
    class OpenionsController < V1::BaseController
      before_action :set_openion, only: [:show, :update, :destroy]

      # GET /openions
      def index
        @openions = Openion.all

        render json: @openions
      end

      # GET /openions/1
      def show
        render json: @openion
      end

      # POST /openions
      def create
        @openion = Openion.new(openion_params)

        if @openion.save
          render json: @openion, status: :created, location: @openion
        else
          render json: @openion.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /openions/1
      def update
        if @openion.update(openion_params)
          render json: @openion
        else
          render json: @openion.errors, status: :unprocessable_entity
        end
      end

      # DELETE /openions/1
      def destroy
        @openion.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_openion
          @openion = Openion.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def openion_params
          params.require(:openion).permit(:title, :option_type, :user, :retrospective_id)
        end
    end
  end
end
