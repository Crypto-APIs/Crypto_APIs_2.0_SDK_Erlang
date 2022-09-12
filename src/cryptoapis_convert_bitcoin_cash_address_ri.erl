-module(cryptoapis_convert_bitcoin_cash_address_ri).

-export([encode/1]).

-export_type([cryptoapis_convert_bitcoin_cash_address_ri/0]).

-type cryptoapis_convert_bitcoin_cash_address_ri() ::
    #{ 'convertedAddress' := binary()
     }.

encode(#{ 'convertedAddress' := ConvertedAddress
        }) ->
    #{ 'convertedAddress' => ConvertedAddress
     }.
