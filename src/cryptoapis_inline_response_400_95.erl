-module(cryptoapis_inline_response_400_95).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_95/0]).

-type cryptoapis_inline_response_400_95() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_fee_address_details_e400:cryptoapis_get_fee_address_details_e400()
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
