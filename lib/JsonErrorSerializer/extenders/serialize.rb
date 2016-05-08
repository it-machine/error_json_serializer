module JsonErrorSerializer
  module Extenders

    module Serialize

      def self.serialize(errors)
        return if errors.nil?

        json = {}
        new_hash = errors.to_hash(true).map do |key, message|
          {
              id: key,
              title: message.join(". ") + "."
          }
        end.flatten

        json[:errors] = new_hash
        json
      end

      def self._200(message = nil)
        message = message.nil? ? 'OK' : message
        data = JSONBuilder::Compiler.generate do
          status '200'
          message message
        end
        data
      end

      def self._400(message = nil)
        message = message.nil? ? 'Bad request' : message
        data = JSONBuilder::Compiler.generate do
          status '400'
          message message
        end
        data
      end

      def self._401(message = nil)
        message = message.nil? ? 'Access denied' : message
        data = JSONBuilder::Compiler.generate do
          status '401'
          message message
        end
        data
      end

      def self._404(message = nil)
        message = message.nil? ? 'Not found' : message
        data = JSONBuilder::Compiler.generate do
          status '404'
          message message
        end
        data
      end

      def self._409(message = nil)
        message = message.nil? ? 'Conflict' : message
        data = JSONBuilder::Compiler.generate do
          status '409'
          message message
        end
        data
      end

      def self._422(message = nil)
        message = message.nil? ? 'Unprocessable Entity' : message
        data = JSONBuilder::Compiler.generate do
          status '422'
          message message
        end
        data
      end

      def self._423(message = nil)
        message = message.nil? ? 'Locked' : message
        data = JSONBuilder::Compiler.generate do
          status '423'
          message message
        end
        data
      end

    end

  end
end
