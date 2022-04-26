-module(cryptoapis_inline_response_400_63).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_63/0]).

-type cryptoapis_inline_response_400_63() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_internal_transactions_by_address_and_time_range_e400:cryptoapis_list_internal_transactions_by_address_and_time_range_e400()
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
