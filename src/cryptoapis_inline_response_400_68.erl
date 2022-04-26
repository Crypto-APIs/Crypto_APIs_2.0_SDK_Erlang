-module(cryptoapis_inline_response_400_68).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_68/0]).

-type cryptoapis_inline_response_400_68() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_estimate_transaction_smart_fee_e400:cryptoapis_estimate_transaction_smart_fee_e400()
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
