-module(cryptoapis_address_coins_transaction_confirmed_data_item_mined_in_block).

-export([encode/1]).

-export_type([cryptoapis_address_coins_transaction_confirmed_data_item_mined_in_block/0]).

-type cryptoapis_address_coins_transaction_confirmed_data_item_mined_in_block() ::
    #{ 'height' := integer(),
       'hash' := binary(),
       'timestamp' := integer()
     }.

encode(#{ 'height' := Height,
          'hash' := Hash,
          'timestamp' := Timestamp
        }) ->
    #{ 'height' => Height,
       'hash' => Hash,
       'timestamp' => Timestamp
     }.
