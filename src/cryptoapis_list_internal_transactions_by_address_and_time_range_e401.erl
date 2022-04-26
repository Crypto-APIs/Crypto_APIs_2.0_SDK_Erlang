-module(cryptoapis_list_internal_transactions_by_address_and_time_range_e401).

-export([encode/1]).

-export_type([cryptoapis_list_internal_transactions_by_address_and_time_range_e401/0]).

-type cryptoapis_list_internal_transactions_by_address_and_time_range_e401() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
