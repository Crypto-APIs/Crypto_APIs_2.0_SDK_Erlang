-module(cryptoapis_get_raw_transaction_data_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_raw_transaction_data_r_data/0]).

-type cryptoapis_get_raw_transaction_data_r_data() ::
    #{ 'item' := cryptoapis_get_raw_transaction_data_ri:cryptoapis_get_raw_transaction_data_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
