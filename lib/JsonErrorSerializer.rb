require 'JsonErrorSerializer/version'

module JsonErrorSerializer
  require 'JsonErrorSerializer/extenders/serialize'
end

require 'JsonErrorSerializer/extenders/controller'
ActiveSupport.on_load(:action_controller) do
  include JsonErrorSerializer::Extenders::Controller
end
