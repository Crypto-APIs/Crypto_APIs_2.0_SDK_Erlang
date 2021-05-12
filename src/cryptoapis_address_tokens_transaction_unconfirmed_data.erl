-module(cryptoapis_address_tokens_transaction_unconfirmed_data).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_unconfirmed_data/0]).

-type cryptoapis_address_tokens_transaction_unconfirmed_data() ::
    #{ 'product' := binary(),
       'event' := binary(),
       'item' := cryptoapis_address_tokens_transaction_unconfirmed_data_item:cryptoapis_address_tokens_transaction_unconfirmed_data_item()
     }.

encode(#{ 'product' := Product,
          'event' := Event,
          'item' := Item
        }) ->
    #{ 'product' => Product,
       'event' => Event,
       'item' => Item
     }.
