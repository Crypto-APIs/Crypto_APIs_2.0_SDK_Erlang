-module(cryptoapis_list_confirmed_tokens_transfers_by_address_and_time_range_403_response).

-export([encode/1]).

-export_type([cryptoapis_list_confirmed_tokens_transfers_by_address_and_time_range_403_response/0]).

-type cryptoapis_list_confirmed_tokens_transfers_by_address_and_time_range_403_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_confirmed_tokens_transfers_by_address_and_time_range_e403:cryptoapis_list_confirmed_tokens_transfers_by_address_and_time_range_e403()
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
