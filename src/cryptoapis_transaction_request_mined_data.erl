-module(cryptoapis_transaction_request_mined_data).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_mined_data/0]).

-type cryptoapis_transaction_request_mined_data() ::
    #{ 'product' := binary(),
       'event' := binary(),
       'item' := cryptoapis_transaction_request_broadcasted_data_item:cryptoapis_transaction_request_broadcasted_data_item()
     }.

encode(#{ 'product' := Product,
          'event' := Event,
          'item' := Item
        }) ->
    #{ 'product' => Product,
       'event' => Event,
       'item' => Item
     }.
