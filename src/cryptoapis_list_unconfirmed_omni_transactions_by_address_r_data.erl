-module(cryptoapis_list_unconfirmed_omni_transactions_by_address_r_data).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_omni_transactions_by_address_r_data/0]).

-type cryptoapis_list_unconfirmed_omni_transactions_by_address_r_data() ::
    #{ 'limit' := integer(),
       'offset' := integer(),
       'total' := integer(),
       'items' := list()
     }.

encode(#{ 'limit' := Limit,
          'offset' := Offset,
          'total' := Total,
          'items' := Items
        }) ->
    #{ 'limit' => Limit,
       'offset' => Offset,
       'total' => Total,
       'items' => Items
     }.
