module Api
  module V1
    class RetrospectivesController < V1::BaseController
      before_action :set_retrospective, only: [:show, :update, :destroy]

      # GET /retrospectives
      def index
        @retrospectives = Retrospective.all

        render json: @retrospectives
      end

      # GET /retrospectives/1
      def show
        render json: @retrospective
      end

      # POST /retrospectives
      def create
        @retrospective = Retrospective.new(retrospective_params)

        if @retrospective.save
          render json: @retrospective, status: :created, location: @retrospective
        else
          render json: @retrospective.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /retrospectives/1
      def update
        if @retrospective.update(retrospective_params)
          render json: @retrospective
        else
          render json: @retrospective.errors, status: :unprocessable_entity
        end
      end

      # DELETE /retrospectives/1
      def destroy
        @retrospective.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_retrospective
          @retrospective = Retrospective.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def retrospective_params
          params.require(:retrospective).permit(:title, :project_id, :users, :option_type)
        end
    end
  end
end
