-module(cryptoapis_broadcast_locally_signed_transaction_rb_data).

-export([encode/1]).

-export_type([cryptoapis_broadcast_locally_signed_transaction_rb_data/0]).

-type cryptoapis_broadcast_locally_signed_transaction_rb_data() ::
    #{ 'item' := cryptoapis_broadcast_locally_signed_transaction_rb_data_item:cryptoapis_broadcast_locally_signed_transaction_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
