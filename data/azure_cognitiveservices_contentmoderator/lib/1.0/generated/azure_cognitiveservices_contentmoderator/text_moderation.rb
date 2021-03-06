# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  #
  # You use the API to scan your content as it is generated. Content Moderator
  # then processes your content and sends the results along with relevant
  # information either back to your systems or to the built-in review tool. You
  # can use this information to take decisions e.g. take it down, send to human
  # judge, etc.
  #
  # When using the API, images need to have a minimum of 128 pixels and a
  # maximum file size of 4MB.
  # Text can be at most 1024 characters long.
  # If the content passed to the text API or the image API exceeds the size
  # limits, the API will return an error code that informs about the issue.
  #
  class TextModeration
    include MsRestAzure

    #
    # Creates and initializes a new instance of the TextModeration class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContentModeratorClient] reference to the ContentModeratorClient
    attr_reader :client

    #
    # Detect profanity and match against custom and shared blacklists
    #
    # Detects profanity in more than 100 languages and match against custom and
    # shared blacklists.
    #
    # @param text_content_type [Enum] The content type. Possible values include:
    # 'text/plain', 'text/html', 'text/xml', 'text/markdown'
    # @param text_content Content to screen.
    # @param language [String] Language of the text.
    # @param autocorrect [Boolean] Autocorrect text.
    # @param pii [Boolean] Detect personal identifiable information.
    # @param list_id [String] The list Id.
    # @param classify [Boolean] Classify input.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Screen] operation results.
    #
    def screen_text(text_content_type, text_content, language:nil, autocorrect:false, pii:false, list_id:nil, classify:false, custom_headers:nil)
      response = screen_text_async(text_content_type, text_content, language:language, autocorrect:autocorrect, pii:pii, list_id:list_id, classify:classify, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Detect profanity and match against custom and shared blacklists
    #
    # Detects profanity in more than 100 languages and match against custom and
    # shared blacklists.
    #
    # @param text_content_type [Enum] The content type. Possible values include:
    # 'text/plain', 'text/html', 'text/xml', 'text/markdown'
    # @param text_content Content to screen.
    # @param language [String] Language of the text.
    # @param autocorrect [Boolean] Autocorrect text.
    # @param pii [Boolean] Detect personal identifiable information.
    # @param list_id [String] The list Id.
    # @param classify [Boolean] Classify input.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def screen_text_with_http_info(text_content_type, text_content, language:nil, autocorrect:false, pii:false, list_id:nil, classify:false, custom_headers:nil)
      screen_text_async(text_content_type, text_content, language:language, autocorrect:autocorrect, pii:pii, list_id:list_id, classify:classify, custom_headers:custom_headers).value!
    end

    #
    # Detect profanity and match against custom and shared blacklists
    #
    # Detects profanity in more than 100 languages and match against custom and
    # shared blacklists.
    #
    # @param text_content_type [Enum] The content type. Possible values include:
    # 'text/plain', 'text/html', 'text/xml', 'text/markdown'
    # @param text_content Content to screen.
    # @param language [String] Language of the text.
    # @param autocorrect [Boolean] Autocorrect text.
    # @param pii [Boolean] Detect personal identifiable information.
    # @param list_id [String] The list Id.
    # @param classify [Boolean] Classify input.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def screen_text_async(text_content_type, text_content, language:nil, autocorrect:false, pii:false, list_id:nil, classify:false, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'text_content_type is nil' if text_content_type.nil?
      fail ArgumentError, 'text_content is nil' if text_content.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'text/plain'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Content-Type'] = text_content_type.to_s unless text_content_type.to_s.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = {
        client_side_validation: true,
        required: true,
        serialized_name: 'Text Content',
        type: {
          name: 'Stream'
        }
      }
      request_content = @client.serialize(request_mapper,  text_content)

      path_template = 'contentmoderator/moderate/v1.0/ProcessText/Screen/'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          query_params: {'language' => language,'autocorrect' => autocorrect,'PII' => pii,'listId' => list_id,'classify' => classify},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::Screen.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # This operation will detect the language of given input content. Returns the
    # <a href="http://www-01.sil.org/iso639-3/codes.asp">ISO 639-3 code</a> for the
    # predominant language comprising the submitted text. Over 110 languages
    # supported.
    #
    # @param text_content_type [Enum] The content type. Possible values include:
    # 'text/plain', 'text/html', 'text/xml', 'text/markdown'
    # @param text_content Content to screen.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DetectedLanguage] operation results.
    #
    def detect_language(text_content_type, text_content, custom_headers:nil)
      response = detect_language_async(text_content_type, text_content, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # This operation will detect the language of given input content. Returns the
    # <a href="http://www-01.sil.org/iso639-3/codes.asp">ISO 639-3 code</a> for the
    # predominant language comprising the submitted text. Over 110 languages
    # supported.
    #
    # @param text_content_type [Enum] The content type. Possible values include:
    # 'text/plain', 'text/html', 'text/xml', 'text/markdown'
    # @param text_content Content to screen.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def detect_language_with_http_info(text_content_type, text_content, custom_headers:nil)
      detect_language_async(text_content_type, text_content, custom_headers:custom_headers).value!
    end

    #
    # This operation will detect the language of given input content. Returns the
    # <a href="http://www-01.sil.org/iso639-3/codes.asp">ISO 639-3 code</a> for the
    # predominant language comprising the submitted text. Over 110 languages
    # supported.
    #
    # @param text_content_type [Enum] The content type. Possible values include:
    # 'text/plain', 'text/html', 'text/xml', 'text/markdown'
    # @param text_content Content to screen.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def detect_language_async(text_content_type, text_content, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'text_content_type is nil' if text_content_type.nil?
      fail ArgumentError, 'text_content is nil' if text_content.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'text/plain'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Content-Type'] = text_content_type.to_s unless text_content_type.to_s.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = {
        client_side_validation: true,
        required: true,
        serialized_name: 'Text Content',
        type: {
          name: 'Stream'
        }
      }
      request_content = @client.serialize(request_mapper,  text_content)

      path_template = 'contentmoderator/moderate/v1.0/ProcessText/DetectLanguage'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedLanguage.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
