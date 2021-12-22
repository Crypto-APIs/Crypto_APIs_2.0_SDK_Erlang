-module(cryptoapis_inline_response_403_8).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_8/0]).

-type cryptoapis_inline_response_403_8() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_generate_deposit_address_e403:cryptoapis_generate_deposit_address_e403()
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
