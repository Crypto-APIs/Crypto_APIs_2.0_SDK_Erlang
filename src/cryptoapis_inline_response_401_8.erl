-module(cryptoapis_inline_response_401_8).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_8/0]).

-type cryptoapis_inline_response_401_8() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_generate_deposit_address_e401:cryptoapis_generate_deposit_address_e401()
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
