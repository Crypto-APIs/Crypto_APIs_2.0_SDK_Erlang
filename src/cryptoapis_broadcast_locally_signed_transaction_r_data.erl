-module(cryptoapis_broadcast_locally_signed_transaction_r_data).

-export([encode/1]).

-export_type([cryptoapis_broadcast_locally_signed_transaction_r_data/0]).

-type cryptoapis_broadcast_locally_signed_transaction_r_data() ::
    #{ 'item' := cryptoapis_broadcast_locally_signed_transaction_ri:cryptoapis_broadcast_locally_signed_transaction_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
