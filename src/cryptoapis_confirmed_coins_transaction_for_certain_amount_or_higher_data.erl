-module(cryptoapis_confirmed_coins_transaction_for_certain_amount_or_higher_data).

-export([encode/1]).

-export_type([cryptoapis_confirmed_coins_transaction_for_certain_amount_or_higher_data/0]).

-type cryptoapis_confirmed_coins_transaction_for_certain_amount_or_higher_data() ::
    #{ 'product' := binary(),
       'event' := binary(),
       'item' := cryptoapis_confirmed_coins_transaction_for_certain_amount_or_higher_data_item:cryptoapis_confirmed_coins_transaction_for_certain_amount_or_higher_data_item()
     }.

encode(#{ 'product' := Product,
          'event' := Event,
          'item' := Item
        }) ->
    #{ 'product' => Product,
       'event' => Event,
       'item' => Item
     }.
