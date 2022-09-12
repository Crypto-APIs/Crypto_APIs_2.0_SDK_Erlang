-module(cryptoapis_convert_bitcoin_cash_address_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_convert_bitcoin_cash_address_rb_data_item/0]).

-type cryptoapis_convert_bitcoin_cash_address_rb_data_item() ::
    #{ 'address' := binary()
     }.

encode(#{ 'address' := Address
        }) ->
    #{ 'address' => Address
     }.
