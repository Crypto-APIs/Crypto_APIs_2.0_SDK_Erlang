-module(cryptoapis_broadcast_transaction_fail_data).

-export([encode/1]).

-export_type([cryptoapis_broadcast_transaction_fail_data/0]).

-type cryptoapis_broadcast_transaction_fail_data() ::
    #{ 'product' := binary(),
       'event' := binary(),
       'item' := cryptoapis_broadcast_transaction_fail_data_item:cryptoapis_broadcast_transaction_fail_data_item()
     }.

encode(#{ 'product' := Product,
          'event' := Event,
          'item' := Item
        }) ->
    #{ 'product' => Product,
       'event' => Event,
       'item' => Item
     }.
