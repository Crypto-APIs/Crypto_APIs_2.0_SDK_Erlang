-module(cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri_recipients).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri_recipients/0]).

-type cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri_recipients() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
