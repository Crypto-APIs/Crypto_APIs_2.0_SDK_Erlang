-module(cryptoapis_list_omni_transactions_by_block_height_response_data).

-export([encode/1]).

-export_type([cryptoapis_list_omni_transactions_by_block_height_response_data/0]).

-type cryptoapis_list_omni_transactions_by_block_height_response_data() ::
    #{ 'offset' := integer(),
       'limit' := integer(),
       'total' := integer(),
       'items' := list()
     }.

encode(#{ 'offset' := Offset,
          'limit' := Limit,
          'total' := Total,
          'items' := Items
        }) ->
    #{ 'offset' => Offset,
       'limit' => Limit,
       'total' => Total,
       'items' => Items
     }.