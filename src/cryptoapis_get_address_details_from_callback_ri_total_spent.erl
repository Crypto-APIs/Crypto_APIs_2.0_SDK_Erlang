-module(cryptoapis_get_address_details_from_callback_ri_total_spent).

-export([encode/1]).

-export_type([cryptoapis_get_address_details_from_callback_ri_total_spent/0]).

-type cryptoapis_get_address_details_from_callback_ri_total_spent() ::
    #{ 'amount' => binary(),
       'unit' => binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
