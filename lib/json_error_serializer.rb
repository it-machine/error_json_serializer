require 'json_error_serializer/version'

module JsonErrorSerializer
  require 'json_error_serializer/extenders/serialize'
end

require 'json_error_serializer/extenders/controller'
ActiveSupport.on_load(:action_controller) do
  include JsonErrorSerializer::Extenders::Controller
end
