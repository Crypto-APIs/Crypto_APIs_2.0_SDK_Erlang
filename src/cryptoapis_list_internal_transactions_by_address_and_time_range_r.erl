-module(cryptoapis_list_internal_transactions_by_address_and_time_range_r).

-export([encode/1]).

-export_type([cryptoapis_list_internal_transactions_by_address_and_time_range_r/0]).

-type cryptoapis_list_internal_transactions_by_address_and_time_range_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_list_internal_transactions_by_address_and_time_range_r_data:cryptoapis_list_internal_transactions_by_address_and_time_range_r_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
