-module(cryptoapis_get_address_balance_ri).

-export([encode/1]).

-export_type([cryptoapis_get_address_balance_ri/0]).

-type cryptoapis_get_address_balance_ri() ::
    #{ 'confirmedBalance' := cryptoapis_get_address_balance_ri_confirmed_balance:cryptoapis_get_address_balance_ri_confirmed_balance()
     }.

encode(#{ 'confirmedBalance' := ConfirmedBalance
        }) ->
    #{ 'confirmedBalance' => ConfirmedBalance
     }.
