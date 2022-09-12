-module(cryptoapis_convert_bitcoin_cash_address_r_data).

-export([encode/1]).

-export_type([cryptoapis_convert_bitcoin_cash_address_r_data/0]).

-type cryptoapis_convert_bitcoin_cash_address_r_data() ::
    #{ 'item' := cryptoapis_convert_bitcoin_cash_address_ri:cryptoapis_convert_bitcoin_cash_address_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
