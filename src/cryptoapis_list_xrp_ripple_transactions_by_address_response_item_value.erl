-module(cryptoapis_list_xrp_ripple_transactions_by_address_response_item_value).

-export([encode/1]).

-export_type([cryptoapis_list_xrp_ripple_transactions_by_address_response_item_value/0]).

-type cryptoapis_list_xrp_ripple_transactions_by_address_response_item_value() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
