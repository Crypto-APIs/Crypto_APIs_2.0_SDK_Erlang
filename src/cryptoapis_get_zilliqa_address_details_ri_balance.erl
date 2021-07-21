-module(cryptoapis_get_zilliqa_address_details_ri_balance).

-export([encode/1]).

-export_type([cryptoapis_get_zilliqa_address_details_ri_balance/0]).

-type cryptoapis_get_zilliqa_address_details_ri_balance() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
