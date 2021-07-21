-module(cryptoapis_wallet_as_a_service_token_not_supported).

-export([encode/1]).

-export_type([cryptoapis_wallet_as_a_service_token_not_supported/0]).

-type cryptoapis_wallet_as_a_service_token_not_supported() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_wallet_as_a_service_token_not_supported_error:cryptoapis_wallet_as_a_service_token_not_supported_error()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
