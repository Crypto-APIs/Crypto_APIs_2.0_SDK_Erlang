-module(cryptoapis_convert_bitcoin_cash_address_rb_data).

-export([encode/1]).

-export_type([cryptoapis_convert_bitcoin_cash_address_rb_data/0]).

-type cryptoapis_convert_bitcoin_cash_address_rb_data() ::
    #{ 'item' := cryptoapis_convert_bitcoin_cash_address_rb_data_item:cryptoapis_convert_bitcoin_cash_address_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
