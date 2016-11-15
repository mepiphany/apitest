# # initializers/savon.rb
#
# # Savon Global configuration
# Savon.configure do |config|
#   config.log = true
#   config.log_level = :debug
#   config.logger = Rails.logger
#   config.env_namespace = :soapenv
# end
#
# HTTPI.log = false
#
# # Log SOAP requests/responses in pretty JSON instead of XML
# class Savon::SOAP::Request
#   def log_request(url, headers, body)
#     log_calling_line
#     SAVON_LOGGER.info "\n###### REQUEST:"
#     SAVON_LOGGER.info "URL: #{url}"
#     SAVON_LOGGER.info "Headers: #{headers}"
#     log_soap_prettily body
#   end
#
#   def log_response(code, body)
#     SAVON_LOGGER.info "\n###### RESPONSE:"
#     SAVON_LOGGER.info "Status Code: #{code}"
#     log_soap_prettily body
#     SAVON_LOGGER.info "-"*50 + "\n\n"
#   end
#
#   def log_calling_line
#     calling_line = caller[1..-1].find { |line| line.include?(Rails.root.to_s) }
#     return unless calling_line
#     calling_line.sub!(Rails.root.to_s + "/", "")
#     file, line, _ = calling_line.split(":")
#     code_line = File.readlines(file)[line.to_i - 1].strip
#     SAVON_LOGGER.info "\n\n" + "-"*50
#     SAVON_LOGGER.info "SOAP request started at #{Time.now}"
#     SAVON_LOGGER.info calling_line
#     SAVON_LOGGER.info "# #{code_line}"
#   end
#
#   def log_soap_prettily(soap)
#     hash = Hash.from_xml(soap)
#     body = hash["Envelope"]["Body"]
#     json = JSON.pretty_generate(body)
#     SAVON_LOGGER.info json
#   end
# end
