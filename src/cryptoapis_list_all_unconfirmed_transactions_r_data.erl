-module(cryptoapis_list_all_unconfirmed_transactions_r_data).

-export([encode/1]).

-export_type([cryptoapis_list_all_unconfirmed_transactions_r_data/0]).

-type cryptoapis_list_all_unconfirmed_transactions_r_data() ::
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
