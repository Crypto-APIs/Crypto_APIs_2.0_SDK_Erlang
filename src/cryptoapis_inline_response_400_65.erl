-module(cryptoapis_inline_response_400_65).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_65/0]).

-type cryptoapis_inline_response_400_65() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_raw_transaction_data_e400:cryptoapis_get_raw_transaction_data_e400()
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
