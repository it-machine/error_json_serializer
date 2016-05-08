module JsonErrorSerializer
  module Extenders

    module Controller

      def validate_errors_serialize(errors)
        render json: JsonErrorSerializer::Extenders::Serialize.serialize(errors), status: :conflict
      end

      def respond_200(message = nil)
        render json: JsonErrorSerializer::Extenders::Serialize._200(message), status: :ok
      end

      def respond_400(message = nil)
        render json: JsonErrorSerializer::Extenders::Serialize._400(message), status: :bad_request
      end

      def respond_401(message = nil)
        render json: JsonErrorSerializer::Extenders::Serialize._401(message), status: :unauthorized
      end

      def respond_404(message = nil)
        render json: JsonErrorSerializer::Extenders::Serialize._404(message), status: :not_found
      end

      def respond_409(message = nil)
        render json: JsonErrorSerializer::Extenders::Serialize._409(message), status: :conflict
      end

      def respond_422(message = nil)
        render json: JsonErrorSerializer::Extenders::Serialize._422(message), status: :unprocessable_entity
      end

      def respond_423(message = nil)
        render json: JsonErrorSerializer::Extenders::Serialize._423(message), status: :locked
      end

    end

  end
end
