class ApplicationController < ActionController::API
  def api_params(*attrs)
   # specifying the :only option does not work with relations
   ActiveModelSerializers::Deserialization.jsonapi_parse(params, key_transform: :unaltered).slice(*attrs)
 end

 def api_param(attr)
   api_params(attr)[attr]
 end
end
