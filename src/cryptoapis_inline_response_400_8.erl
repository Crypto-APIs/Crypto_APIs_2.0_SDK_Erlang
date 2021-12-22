-module(cryptoapis_inline_response_400_8).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_8/0]).

-type cryptoapis_inline_response_400_8() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_generate_deposit_address_e400:cryptoapis_generate_deposit_address_e400()
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
