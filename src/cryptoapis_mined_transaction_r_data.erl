-module(cryptoapis_mined_transaction_r_data).

-export([encode/1]).

-export_type([cryptoapis_mined_transaction_r_data/0]).

-type cryptoapis_mined_transaction_r_data() ::
    #{ 'item' := cryptoapis_mined_transaction_ri:cryptoapis_mined_transaction_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
