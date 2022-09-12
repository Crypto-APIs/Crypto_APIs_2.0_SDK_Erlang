-module(cryptoapis_get_address_details_from_callback_ri_confirmed_balance).

-export([encode/1]).

-export_type([cryptoapis_get_address_details_from_callback_ri_confirmed_balance/0]).

-type cryptoapis_get_address_details_from_callback_ri_confirmed_balance() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
