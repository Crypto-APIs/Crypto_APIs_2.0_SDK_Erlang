-module(cryptoapis_list_confirmed_transactions_by_address_and_time_range_e403).

-export([encode/1]).

-export_type([cryptoapis_list_confirmed_transactions_by_address_and_time_range_e403/0]).

-type cryptoapis_list_confirmed_transactions_by_address_and_time_range_e403() ::
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
