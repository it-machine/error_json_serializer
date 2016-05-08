module JsonErrorSerializer
  module Extenders

    module Controller

      def respond_200(message = nil)
        render json: JsonErrorSerializer._200(message), status: :ok
      end

      def respond_400(message = nil)
        render json: JsonErrorSerializer._400(message), status: :bad_request
      end

      def respond_401(message = nil)
        render json: JsonErrorSerializer._401(message), status: :unauthorized
      end

      def respond_404(message = nil)
        render json: JsonErrorSerializer._404(message), status: :not_found
      end

      def respond_409(message = nil)
        render json: JsonErrorSerializer._409(message), status: :conflict
      end

      def respond_422(message = nil)
        render json: JsonErrorSerializer._422(message), status: :unprocessable_entity
      end

      def respond_423(message = nil)
        render json: JsonErrorSerializer._423(message), status: :locked
      end

    end

  end
end